using Blog.Models;
using Microsoft.AspNetCore.Mvc;
using static Blog.Models.Dto;

namespace Blog.Controllers
{
    [Route("blog")]
    [ApiController]
    public class BlogController : ControllerBase
    {
        [HttpGet]
        public ActionResult<Blogger> Get()
        {
            using (var context = new BlogDbContext())
            {
                return Ok(context.Bloggers.ToList());
            }

        }

        [HttpGet("{id}")]
        public ActionResult<Blogger> GetBId(Guid id)
        {
            using (var context = new BlogDbContext())
            {
                var blogger = context.Bloggers.FirstOrDefault(x => x.Id == id);

                if (blogger != null)
                {
                    return StatusCode(200, blogger);
                }

                return NotFound();

            }

        }


        [HttpPost]
        public ActionResult<Blogger> Post(CreateBloggerDto createBloggerDto)
        {
            using (var context = new BlogDbContext())
            {
                var blogger = new Blogger()
                {
                    Id = Guid.NewGuid(),
                    Name = createBloggerDto.Name,
                    Sex = createBloggerDto.Sex,
                    Status = "Waiting",
                    RegistrationTime = DateTime.Now
                };

                if (blogger != null)
                {
                    context.Bloggers.Add(blogger);
                    context.SaveChanges();
                    return StatusCode(201, blogger);
                }
                return BadRequest();
            }

        }

        [HttpPut]
        public ActionResult<Blogger> Put(Guid id, UpdateBloggerDto updateBloggerDto)
        {
            using (var context = new BlogDbContext())
            {
                var existingBlogger = context.Bloggers.FirstOrDefault(x => x.Id == id);

                if (existingBlogger != null)
                {
                    existingBlogger.Name = updateBloggerDto.Name;
                    existingBlogger.Sex = updateBloggerDto.Sex;

                    context.Bloggers.Update(existingBlogger);
                    context.SaveChanges();
                    return StatusCode(200, existingBlogger);
                }
                return NotFound();
            }
        }

        [HttpDelete]
        public ActionResult<object> Put(Guid id)
        {
            using (var context = new BlogDbContext())
            {
                var blogger = context.Bloggers.FirstOrDefault(x => x.Id == id);

                if (blogger != null)
                {

                    context.Bloggers.Remove(blogger);
                    context.SaveChanges();
                    return StatusCode(200, new { message = "Sikeres Törlés." });
                }
                return NotFound(new { message = "Sikertelen Törlés." });
            }
        }

    }
}
