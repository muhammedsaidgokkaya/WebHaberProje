using Microsoft.AspNetCore.Mvc;
using WebProje.Models;
using System.Linq;

namespace WebProje.ViewComponents.Slider
{
    public class Slider : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            Context c = new Context();
            var d = c.Habers.ToList();
            return View(d);
        }
    }
}