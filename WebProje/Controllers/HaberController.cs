using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;
using WebProje.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebProje.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [AllowAnonymous]
    public class HaberController : ControllerBase
    {
        // GET: api/<HaberController>
        [HttpGet]
        public IEnumerable<Haber> Get()
        {
            List<Haber> habers = new List<Haber>();
            using (Context c = new Context())
            {
                habers = c.Habers.ToList();
            }
            return habers;
        }

        // GET api/<HaberController>/5
        [HttpGet("{id}")]
        public Haber Get(int id)
        {
            Haber haber = new Haber();
            using (Context c = new Context())
            {
                haber = c.Habers.Find(id);
            }
            return haber;
        }


    }
}
