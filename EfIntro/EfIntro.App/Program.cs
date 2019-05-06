using System;
using EfIntro.DataAccess;
using EfIntro.DataAccess.Entities;
using Microsoft.EntityFrameworkCore;
using System.Linq;



namespace EfIntro.App
{
    class Program
    {
        static void Main(string[] args)
        {
            using(MovieDbContext dbContext = CreateDbContext())
            {
                PrintMovies(dbContext);
                //AddAMovie(dbContext, "Toy Story", new DateTime(2006, 7, 21));
                //PrintMovies(dbContext);
                DeleteAMovie(dbContext, "Bushy Babes");
                PrintMovies(dbContext);

            }
        }

        private static MovieDbContext CreateDbContext()
        {
            var optionsBuilder = new DbContextOptionsBuilder<MovieDbContext>();
            optionsBuilder.UseSqlServer(SecretConfiguration.ConnectionString);

            return new MovieDbContext(optionsBuilder.Options);
        }

        private static void PrintMovies(MovieDbContext dbContext)
        {
            foreach(Movie movie in dbContext.Movie)
            {
                Console.WriteLine($"{movie.MovieId}: {movie.Title} ({movie.ReleaseDate})");
            }
        }

        private static void AddAMovie(MovieDbContext dbContext, string title, DateTime releaseDate)
        {
            var movie = new Movie();
            movie.Title = title;
            movie.ReleaseDate = releaseDate;
            dbContext.Movie.Add(movie);
            dbContext.SaveChanges();
        }

        private static void DeleteAMovie(MovieDbContext dbContext, string title)
        {
            var movie = dbContext.Movie.First(m => m.Title == title);
            dbContext.Movie.Remove(movie);
            dbContext.SaveChanges();
        }
    }
}
