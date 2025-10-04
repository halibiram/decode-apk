package com.tknetwork.tunnel.helper;

import android.content.Context;
import androidx.appcompat.app.AlertDialog;
import com.tknetwork.tunnel.utils.Generator;

/* loaded from: classes3.dex */
public class GeneratorHelper implements Generator.GeneratorListener {
    private AlertDialog ab;
    private final Context context;
    private GeneratorListener listener;

    /* loaded from: classes3.dex */
    public interface GeneratorListener {
        void onCancel();

        void onGenerate(String str);
    }

    public GeneratorHelper(Context context) {
        this.context = context;
    }

    @Override // com.tknetwork.tunnel.utils.Generator.GeneratorListener
    public void onGeneratePayload(String str) {
        this.listener.onGenerate(str);
    }

    @Override // com.tknetwork.tunnel.utils.Generator.GeneratorListener
    public void onGeneratorClose() {
        this.listener.onCancel();
    }

    public void setCancelListener(GeneratorListener generatorListener) {
        this.listener = generatorListener;
    }

    public void show() {
        Generator generator = new Generator(this.context);
        generator.setGeneratorListener(this);
        generator.show();
    }
}
