
using System.Threading.Tasks;


namespace PyRunnerDemo.UI
{
    public class HelloWorldViewModel:ViewModelBase
    {
        private readonly MainViewModel _mainVm;
        private string HelloWorldScript { get; set; }
        private string _helloWorldString;
        public string HelloWorldString
        {
            get
            {
                return _helloWorldString;
            }
            set

            {
                _helloWorldString = value;
                OnPropertyChanged();
            }
        }
        
        public HelloWorldViewModel(MainViewModel mainViewModel, string helloScript)
        {
            _mainVm = mainViewModel;
            HelloWorldScript = helloScript;
            
        }

        internal async Task<bool> RunHelloWord()
        {
            HelloWorldString = await startHelloWord();
            if (HelloWorldString != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        internal async Task<string> startHelloWord()
        {
            string output = await _mainVm.PythonRunner.ExecuteAsync(
                HelloWorldScript);

            return output;
        }
    }
}