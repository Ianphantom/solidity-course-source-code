pragma solidity >=0.7.0 <0.9.0;

contract learnStructs {
    struct Movie {
        string title;
        string director;
        uint256 id;
    }

    Movie movie1;

    function setMovieHardCoded() public {
        movie1 = Movie("Blade Runner", "Ridley Scoot", 1);
    }

    function setMovieDynamic(
        string memory _title,
        string memory _director,
        uint256 _id
    ) public {
        movie1 = Movie(_title, _director, _id);
    }

    function getMovie() public view returns (Movie memory) {
        return movie1;
    }
}

contract exerciseLearnStructs {
    struct Movie {
        string title;
        string director;
        uint256 id;
    }

    Movie movie1;
    Movie comedy;

    function setMovieComedyDynamic(
        string memory _title,
        string memory _director,
        uint256 _id
    ) public {
        comedy = Movie(_title, _director, _id);
    }

    function getMovie() public view returns (Movie memory) {
        return comedy;
    }
}
