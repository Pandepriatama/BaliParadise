/* eslint-disable react/prop-types */
import { useEffect, useState } from "react";
import Logo from "./components/logo";

const Header = ({ puraRef, homeRef, aboutRef }) => {
  const scrollToPanduan = () =>
    puraRef.current.scrollIntoView({ behavior: "smooth", block: "start" });
  const scrollToAbout = () =>
    homeRef.current.scrollIntoView({ behavior: "smooth", block: "start" });
  const scrollToHome = () =>
    aboutRef.current.scrollIntoView({ behavior: "smooth", block: "start" });

  const [isScrolled, setIsScrolled] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      if (window.scrollY > 50) {
        setIsScrolled(true);
      } else {
        setIsScrolled(false);
      }
    };

    window.addEventListener("scroll", handleScroll);
    return () => window.removeEventListener("scroll", handleScroll);
  }, []);
  return (
    <div
      style={{
        backgroundImage: `url(${import.meta.env.VITE_IMAGE_URL}/home.jpg)`,
      }}
      className="h-[600px] bg-center bg-cover bg-no-repeat relative"
    >
      <div className="absolute inset-0 bg-black/40"></div>
      <header
        className={`flex justify-between fixed inset-x-0 top-0 p-4 transition-colors duration-300 ease-in-out ${
          isScrolled ? "bg-black/50" : "bg-transparent"
        }  `}
      >
        <Logo />
        <nav className="flex gap-4 md:gap-10 lg:gap-20 text-[#FFD400] font-semibold items-center px-8">
          <div className="cursor-pointer" onClick={() => scrollToHome()}>
            Home
          </div>
          <div className="cursor-pointer" onClick={() => scrollToAbout()}>
            About Us
          </div>
          <div className="cursor-pointer" onClick={() => scrollToPanduan()}>
            Panduan
          </div>
        </nav>
      </header>
    </div>
  );
};

export default Header;
