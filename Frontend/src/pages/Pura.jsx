import { useNavigate, useParams } from "react-router-dom";
import { useEffect, useState } from "react";
import Logo from "../components/logo";
const Pura = () => {
  const navigate = useNavigate();

  const { id } = useParams();
  const [pura, setPura] = useState();
  const [isLoading, setLoading] = useState(true);
  const [isScrolled, setIsScrolled] = useState(false);

  useEffect(() => {
    const getPura = () => {
      const fetchData = async () => {
        setLoading(true);
        try {
          const response = await fetch(
            `${import.meta.env.VITE_API_URL}/pura/${id}`
          );
          if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
          }
          const result = await response.json();
          setPura(result);
        } finally {
          setLoading(false);
        }
      };
      fetchData();
    };
    getPura(id);
  }, []);

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
  if (isLoading) return <>loading</>;
  return (
    <div className="">
      <header
        className={`flex justify-between items-center fixed right-[250px] left-[250px] top-0 p-4 transition-colors duration-300 ease-in-out ${
          isScrolled ? "bg-black/50" : "bg-transparent"
        }  `}
      >
        <Logo />
        <nav className="flex gap-20 font-semibold px-8">
          <div onClick={() => navigate("/panduan")}>
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
        <div
          style={{
            backgroundImage: `url(${import.meta.env.VITE_IMAGE_URL}/${
              pura.foto
            })`,
          }}
          className="h-[600px] bg-center bg-cover bg-no-repeat"
        ></div>
        <section>
          <div className="text-center my-8 font-bold text-xl">{pura.nama}</div>
          <div className="px-10 text-justify">
            <div dangerouslySetInnerHTML={{ __html: pura.deskripsi }} />
          </div>
        </section>
      </div>
    </div>
  );
};

export default Pura;
