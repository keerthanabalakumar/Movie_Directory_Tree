using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace Movie
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                XmlReaderSettings settings = new XmlReaderSettings();
                settings.DtdProcessing = DtdProcessing.Parse;
                if (string.IsNullOrEmpty(TextBox1.Text))
                    TextBox1.Text = "http://www.public.asu.edu/~kbalakum/Movies.xml";
                XmlReader reader = XmlReader.Create(TextBox1.Text, settings);
                String combined = " ";
                String element = "****** Element tag names ****** \n";
                String attribute = "****** Attribute Names and values ****** \n";
                String text = "****** Text contents ****** \n";
                reader.MoveToContent();
                // Parse the file and display each of the nodes.
                while (reader.Read())
                {
                    if (reader.NodeType == XmlNodeType.Element)
                        element = element + reader.Name + " ,\n ";

                    if (reader.NodeType == XmlNodeType.Text)
                        text = text + reader.Value + " , \n";

                    if (reader.AttributeCount > 0)
                    {
                        for (int attInd = 0; attInd < reader.AttributeCount; attInd++)
                        {
                            reader.MoveToAttribute(attInd);
                            attribute = attribute + reader.Name + " , \n" + reader.Value + " , \n";
                        }

                    }


                }
                combined = element + text + attribute;
                TextBox2.Text = combined;
            }
            catch (Exception ex)
            {

            }
        }
    }
}