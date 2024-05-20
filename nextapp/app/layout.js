import Header from "./Header";
import Navigation from "./Navigation";
import Activity from "./component/Activity";
import "./globals.css";
import { Providers } from "./redux/provider";

export const metadata = {
  title: "NextJS App",
  description: "Next JS and Wordpress demo application",
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body>
        <Providers>
          <Header />
          <Navigation />
          <Activity />
          {children}
        </Providers>
      </body>
    </html>
  );
}
