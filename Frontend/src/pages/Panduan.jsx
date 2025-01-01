import { useNavigate } from "react-router-dom";
import usePura from "../api/usePura";
import Logo from "../components/logo";
import { useEffect, useState } from "react";

const Panduan = () => {
  const { data, loading } = usePura();
  const navigate = useNavigate();
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

  if (loading) return <>Loading</>;
  return (
    <div>
      <header
        className={`flex justify-between items-center fixed right-[250px] left-[250px] top-0 p-4 transition-colors duration-300 ease-in-out ${
          isScrolled ? "bg-black/50" : "bg-transparent"
        }  `}
      >
        <Logo />

        <nav className="flex gap-20 font-semibold px-8">
          <div onClick={() => navigate("/")}>
            <button className="rounded-xl  bg-[#FFD400] px-4 py-2 ">
              Kembali
            </button>
          </div>
        </nav>
      </header>
      <div className="pt-20 pb-10">
        <h1 className="font-bold text-xl my-8 text-center">
          Panduan Mengunjungi Pura di Bali
        </h1>
        <div className="grid grid-cols-3 grid-rows-3 gap-4 ">
          {data.map((v, _) => (
            <div
              key={v.id}
              className="flex flex-col items-center justify-center "
            >
              <div
                onClick={() => navigate(`/pura/${v.id}`)}
                className="h-56 w-72 aspect-video cursor-pointer"
              >
                <img
                  src={`${import.meta.env.VITE_IMAGE_URL}/${v.foto}`}
                  className="size-full"
                />
              </div>
              <span className="font-bold capitalize">{v.nama}</span>
              <span>{v.lokasi}</span>
              <button
                onClick={() => navigate(`/panduan/${v.id}`)}
                className="rounded-md  bg-[#FFD400] px-2 py-0.5 font-semibold mt-2"
              >
                Selengkapnya
              </button>{" "}
            </div>
          ))}
        </div>
      </div>
    </div>
  );
};

export default Panduan;
