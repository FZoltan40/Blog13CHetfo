﻿namespace Blog.Models
{
    public class Dto
    {
        public record CreateBloggerDto(string Name, string Sex);
        public record UpdateBloggerDto(string Name, string Sex);
    }
}
