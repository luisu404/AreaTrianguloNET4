using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AreaTriangulo
{
    public partial class frmArea2 : System.Web.UI.Page
    {
        double v1, v2, r;
        double pi = 3.1416;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
                ImgFigura.ImageUrl = "~/imagen/placeholder.png";
                RbtnOpciones.ClearSelection();
                LblValor1.Text = "Valor 1:";
                TxtValor1.Text = "";
                TxtValor1.Enabled = false;

                LblValor2.Text = "Valor 2:";
                TxtValor2.Text = "";
                TxtValor2.Enabled = false;

                LblLetreroSeleccion.Text = "Seleccione una Opcion";
                LblResultado2.Text = "----";
                LblMensajes.Text = "";
            }
        }

        protected void RbtnOpciones_SelectedIndexChanged(object sender, EventArgs e)
        {
            TxtValor1.Text = "";
            TxtValor2.Text = "";

            switch (RbtnOpciones.SelectedValue)
            {
                case "Triangulo":
                    LblValor1.Text = "Base:";
                    TxtValor1.Enabled = true;
                    LblValor2.Text = "Altura:";
                    TxtValor2.Enabled = true;
                    ImgFigura.ImageUrl = "~/imagen/triangulo.png";
                    LblMensajes.Text = "";
                    break;

                case "Circulo":
                    LblValor1.Text = "Radio:";
                    TxtValor1.Enabled = true;
                    LblValor2.Text = "";
                    TxtValor2.Enabled = false;
                    TxtValor2.ForeColor = Color.Red;
                    TxtValor2.Text = "No requerido";
                    ImgFigura.ImageUrl = "~/imagen/circulo.png";
                    LblMensajes.Text = "";
                    break;

                case "Cuadrado":
                    LblValor1.Text = "Lado:";
                    TxtValor1.Enabled = true;
                    TxtValor2.Text = "No requerido";
                    TxtValor2.ForeColor = Color.Red;
                    TxtValor2.Enabled = false;
                    ImgFigura.ImageUrl = "~/imagen/cuadrado.png";
                    LblMensajes.Text = "";
                    break;
            }

            LblLetreroSeleccion.Text = "Opción seleccionada: " + RbtnOpciones.SelectedValue;
        }

        protected void BtnLimpiar_Click(object sender, EventArgs e)
        {
            ImgFigura.ImageUrl = "~/imagen/placeholder.png";
            RbtnOpciones.ClearSelection();
            
            LblValor1.Text = "Valor 1:";
            TxtValor1.Text = "";
            TxtValor1.Enabled = false;

            LblValor2.Text = "Valor 2:";
            TxtValor2.Text = "";
            TxtValor2.Enabled = false;

            LblLetreroSeleccion.Text = "Seleccione una Opcion";
            LblResultado2.Text = "----";
            LblMensajes.Text = "";

        }
        protected void BtnCalcular_Click(object sender, EventArgs e)
        {
            try
            {
                if(RbtnOpciones.SelectedValue == "Triangulo")
                {
                    if (String.IsNullOrEmpty(TxtValor1.Text))
                    {
                        LblMensajes.Text = $"Error: Todos los campos (BASE y ALTURA) son necesarios";
                        return;
                    }
                    else 
                    {
                        if (!double.TryParse(TxtValor1.Text, out v1) || !double.TryParse(TxtValor2.Text, out v2))
                        {
                            LblMensajes.Text = "Error: Solo se aceptan números enteros y decimales";
                            return;
                        }
                        r = (v1 * v2) / 2;
                        LblResultado2.Text = r.ToString();
                        LblMensajes.Text = "";
                        return;
                    }

                }

                if (RbtnOpciones.SelectedValue == "Circulo")
                {
                    if (String.IsNullOrEmpty(TxtValor1.Text))
                    {
                        LblMensajes.Text = $"Error: El campo RADIO no puede estar vacio";
                        return;
                    }
                    else
                    {
                        if (!double.TryParse(TxtValor1.Text, out v1))
                        {
                            LblMensajes.Text = "Error: Solo se aceptan números enteros y decimales";
                            return;
                        }
                        r = pi * (v1 * v1);
                        LblResultado2.Text = r.ToString();
                        LblMensajes.Text = "";
                        return;
                    }
                }

                if(RbtnOpciones.SelectedValue == "Cuadrado")
                {
                    if (String.IsNullOrEmpty(TxtValor1.Text))
                    {
                        LblMensajes.Text = $"Error: El campo LADO no puede estar vacio";
                    }
                    else 
                    {
                        if (!double.TryParse(TxtValor1.Text, out v1))
                        {
                            LblMensajes.Text = "Error: Solo se aceptan números enteros y decimales";
                            return;
                        }
                        r = v1 * v1;
                        LblResultado2.Text = r.ToString();
                        LblMensajes.Text = "";
                        return;
                    }
                }
                else
                {
                    LblMensajes.Text = $"Debe seleccionar una opcion.";
                }
            }
            catch (FormatException)
            {
                LblMensajes.Text = $"Error: Solo se aceptan numeros enteros y decimales.";
            }
            catch (ArgumentNullException)
            {
                LblMensajes.Text = "Error: Hay campos vacios que son necesarios.";
            }
            catch (Exception ex)
            {
                LblMensajes.Text = "Error inesperado: " + ex.Message;
            }
        }





    }
}