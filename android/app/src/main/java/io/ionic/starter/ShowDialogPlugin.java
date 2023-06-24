package io.ionic.starter;
import android.app.AlertDialog;
import android.util.Log;

import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;


@CapacitorPlugin(name = "ShowDialog")
public class ShowDialogPlugin extends Plugin {

    @PluginMethod()
    public void show(PluginCall call) {
        String title = call.getString("title");
        String message = call.getString("message");
        new AlertDialog.Builder(getActivity())
                .setTitle(title).
                setMessage(message)
                .setPositiveButton("OK", null)
                .show();

    }
}

