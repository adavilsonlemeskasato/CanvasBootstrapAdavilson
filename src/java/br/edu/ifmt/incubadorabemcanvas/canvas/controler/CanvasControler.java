package br.edu.ifmt.incubadorabemcanvas.canvas.controler;

import br.edu.ifmt.incubadorabemcanvas.canvasDAO.CanvasDAO;
import br.edu.ifmt.incubadorabemcanvas.entidade.cavas.Canvas;
import br.edu.ifmt.incubadorabemcanvas.util.exception.ErroSistema;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Adavilson 20/09/2019
 */
public class CanvasControler {

    private static ArrayList<Canvas> listaCanvas = new ArrayList<Canvas>();

    public static void inserir(Canvas novoCanvas) {
        listaCanvas.add(novoCanvas);
    }

    public static void alterar(Canvas alterarCanvas) {
        excluir(alterarCanvas.getId_canvas());
        inserir(alterarCanvas);
    }

    public static void excluir(int idCanvas) {

        for (int i = 0; i < listaCanvas.size(); i++) {
            Canvas cadaCanvas = listaCanvas.get(i);
            if (cadaCanvas.getId_canvas().equals(idCanvas)) {
                listaCanvas.remove(i);
            }
        }
    }

    public static List<Canvas> listar() throws ErroSistema {
        CanvasDAO canvasDAO = new CanvasDAO();
        return  canvasDAO.buscar(); 
    }

}
