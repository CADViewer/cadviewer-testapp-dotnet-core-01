public class AppSettings
{
    private static AppSettings _instance;
    private static readonly object ObjLocked = new object();
    private IConfiguration _configuration;

    protected AppSettings()
    {
    }

    public static AppSettings Instance
    {
        get
        {
            if (null == _instance)
            {
                lock (ObjLocked)
                {
                    if (null == _instance)
                        _instance = new AppSettings();
                }
            }
            return _instance;
        }
    }
}
