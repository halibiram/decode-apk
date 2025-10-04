package com.google.android.material.color;

import android.content.Context;
import android.content.res.loader.ResourcesLoader;
import android.content.res.loader.ResourcesProvider;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0359xad53da1a;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.util.Map;

@RequiresApi(30)
/* loaded from: classes2.dex */
final class ColorResourcesLoaderCreator {
    private static final String TAG = new ObfuscatedString(new long[]{4008242920548907611L, 55631469714353792L, -1915434722632144740L, -4641958817153592032L}).toString();

    private ColorResourcesLoaderCreator() {
    }

    @Nullable
    public static ResourcesLoader create(@NonNull Context context, @NonNull Map<Integer, Integer> map) {
        FileDescriptor fileDescriptor;
        ResourcesProvider loadFromTable;
        try {
            byte[] create = ColorResourcesTableCreator.create(context, map);
            new ObfuscatedString(new long[]{3014938830223174931L, 1438737597587869719L, -5831118957026677388L, -5338460847268914086L}).toString();
            new ObfuscatedString(new long[]{8654247431997410377L, -6880560222276818834L, -9213007692168564987L, -528295772059368211L}).toString();
            int length = create.length;
            if (create.length != 0) {
                try {
                    fileDescriptor = Os.memfd_create(new ObfuscatedString(new long[]{-143400423296880747L, -7924422583978558642L, -3122101187537601988L}).toString(), 0);
                    try {
                        if (fileDescriptor == null) {
                            new ObfuscatedString(new long[]{6047740495434037816L, 2655008313823346869L, -6401063099371255407L, 2380558050900313404L}).toString();
                            new ObfuscatedString(new long[]{-9139314773007568279L, -5171424883732616714L, -3192860692028481835L, -3536487934236327248L, 4025624065609404030L, 3680067985752553701L}).toString();
                            if (fileDescriptor != null) {
                                Os.close(fileDescriptor);
                            }
                            return null;
                        }
                        FileOutputStream fileOutputStream = new FileOutputStream(fileDescriptor);
                        try {
                            fileOutputStream.write(create);
                            ParcelFileDescriptor dup = ParcelFileDescriptor.dup(fileDescriptor);
                            try {
                                AbstractC0359xad53da1a.m2911x952a0a9e();
                                ResourcesLoader m2898x9738a56c = AbstractC0359xad53da1a.m2898x9738a56c();
                                loadFromTable = ResourcesProvider.loadFromTable(dup, null);
                                m2898x9738a56c.addProvider(loadFromTable);
                                if (dup != null) {
                                    dup.close();
                                }
                                fileOutputStream.close();
                                Os.close(fileDescriptor);
                                return m2898x9738a56c;
                            } finally {
                            }
                        } catch (Throwable th) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        if (fileDescriptor != null) {
                            Os.close(fileDescriptor);
                        }
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    fileDescriptor = null;
                }
            } else {
                return null;
            }
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{4749361981719701903L, 4422077757042014535L, 1111211632698929559L, 2251114967142091426L}).toString();
            new ObfuscatedString(new long[]{3980198701637833363L, -810185679469831746L, -4041585834745119628L, 8191931684622892362L, 3528059995226086625L, -9074840608978014140L, 3636897113825290407L}).toString();
            return null;
        }
    }
}
