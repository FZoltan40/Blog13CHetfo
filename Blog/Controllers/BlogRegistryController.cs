using Blog.Models;
using Microsoft.AspNetCore.Mvc;
using static Blog.Models.Dto;

namespace Blog.Controllers
{
    [Route("blogregistry")]
    [ApiController]
    public class BlogRegistryController : ControllerBase
    {
        [HttpPost]
        public ActionResult<BlogRegistry> Post(CreateBlogReistryDto createBlogReistryDto)
        {
            using (var context = new BlogDbContext())
            {
                var blogRegistry = new BlogRegistry()
                {
                    Id = Guid.NewGuid(),
                    Title = createBlogReistryDto.Title,
                    Description = createBlogReistryDto.Description,
                    CretatedTime = DateTime.Now,
                    LastUpdatedTime = DateTime.Now,
                    BloggerId = createBlogReistryDto.BloggerId
                };

                if (blogRegistry != null)
                {
                    context.BlogRegistries.Add(blogRegistry);
                    context.SaveChanges();
                    return StatusCode(201, blogRegistry);
                }

                return BadRequest();
            }

        }

        [HttpGet("{id}")]
        public ActionResult<object> GetById(Guid id)
        {
            using (var context = new BlogDbContext())
            {
                var result = context.BlogRegistries.Where(x => x.Blogger.Id == id).Select(x => new { x.Blogger.Name, x.Title, x.Description });

                return Ok(result.ToList());
            }

        }

    }
}
