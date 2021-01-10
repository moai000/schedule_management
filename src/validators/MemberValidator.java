package validators;

import java.util.ArrayList;
import java.util.List;

import models.Member;

public class MemberValidator {
	public static List<String> validate(Member m) {
        List<String> error = new ArrayList<String>();

        String name_error = _validateName(m.getName());
        if(!name_error.equals("")) {
            error.add(name_error);
        }
        String color_error = _validateColor(m.getColor());
        if(!color_error.equals("")) {
            error.add(color_error);
        }
        return error;
    }

    private static String _validateName(String name) {
        if(name == null || name.equals("")) {
            return "● 名前を入力してください。";
            }
        return "";
    }

    private static String _validateColor(String color) {
        if(color == null || color.equals("")) {
            return "● 色を選択してください。";
            }
        return "";
    }
}
