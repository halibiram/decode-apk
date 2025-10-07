package androidx.test.platform.io;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.test.platform.app.InstrumentationRegistry;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class FileTestStorage implements PlatformTestStorage {
    private static final String TAG = "FileTestStorage";
    private final TestDirCalculator testDirCalculator = new TestDirCalculator();

    @Override // androidx.test.platform.io.PlatformTestStorage
    public void addOutputProperties(Map<String, Serializable> map) {
    }

    @Override // androidx.test.platform.io.PlatformTestStorage
    public String getInputArg(String str) {
        return InstrumentationRegistry.getArguments().getString(str);
    }

    @Override // androidx.test.platform.io.PlatformTestStorage
    public Map<String, String> getInputArgs() {
        HashMap hashMap = new HashMap();
        Bundle arguments = InstrumentationRegistry.getArguments();
        for (String str : arguments.keySet()) {
            hashMap.put(str, arguments.getString(str));
        }
        return hashMap;
    }

    @Override // androidx.test.platform.io.PlatformTestStorage
    public Uri getInputFileUri(@NonNull String str) {
        return Uri.fromFile(new File(this.testDirCalculator.getInputDir(), str));
    }

    @Override // androidx.test.platform.io.PlatformTestStorage
    public Uri getOutputFileUri(@NonNull String str) {
        return Uri.fromFile(new File(this.testDirCalculator.getOutputDir(), str));
    }

    @Override // androidx.test.platform.io.PlatformTestStorage
    public Map<String, Serializable> getOutputProperties() {
        return Collections.emptyMap();
    }

    @Override // androidx.test.platform.io.PlatformTestStorage
    public boolean isTestStorageFilePath(@NonNull String str) {
        return str.startsWith(this.testDirCalculator.getOutputDir().getAbsolutePath());
    }

    @Override // androidx.test.platform.io.PlatformTestStorage
    public InputStream openInputFile(String str) {
        return new FileInputStream(new File(this.testDirCalculator.getInputDir(), str));
    }

    @Override // androidx.test.platform.io.PlatformTestStorage
    public InputStream openInternalInputFile(String str) {
        return openInputFile(str);
    }

    @Override // androidx.test.platform.io.PlatformTestStorage
    public OutputStream openInternalOutputFile(String str) {
        return openOutputFile(str);
    }

    @Override // androidx.test.platform.io.PlatformTestStorage
    public OutputStream openOutputFile(String str) {
        return openOutputFile(str, false);
    }

    @Override // androidx.test.platform.io.PlatformTestStorage
    public OutputStream openOutputFile(String str, boolean z) {
        File file = new File(this.testDirCalculator.getOutputDir(), str);
        file.getAbsolutePath();
        if (!file.getParentFile().exists() && !file.getParentFile().mkdirs()) {
            throw new FileNotFoundException("Failed to create output dir " + file.getParentFile().getAbsolutePath());
        }
        return new FileOutputStream(file, z);
    }
}
