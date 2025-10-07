package androidx.test.ext.junit.rules;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import androidx.test.core.app.ApplicationProvider;
import androidx.test.platform.io.PlatformTestStorageRegistry;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.junit.rules.TestRule;
import org.junit.runner.Description;
import org.junit.runners.model.Statement;

/* loaded from: classes.dex */
public final class DeleteFilesRule implements TestRule {
    /* JADX INFO: Access modifiers changed from: private */
    public static void deleteFilesRecursively(Set<File> set, File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    if (!PlatformTestStorageRegistry.getInstance().isTestStorageFilePath(file2.getPath())) {
                        deleteFilesRecursively(set, file2);
                        if (!set.contains(file2) && file2.exists()) {
                            File[] listFiles2 = file2.listFiles();
                            if (listFiles2 == null && !file2.delete()) {
                                System.err.println("DeleteRules failed to delete (not a directory or I/O error): " + file2);
                            } else if (listFiles2.length == 0 && !file2.delete()) {
                                System.err.println("DeleteRules failed to delete: " + file2);
                            }
                        }
                    }
                } else if (!set.contains(file2) && file2.exists() && !isConstant(file2) && !file2.delete()) {
                    System.err.println("DeleteRules failed to delete: " + file2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void findFilesRecursively(Set<File> set, File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                set.add(file2);
                if (file2.isDirectory()) {
                    findFilesRecursively(set, file2);
                }
            }
        }
    }

    private static boolean isConstant(File file) {
        return file.getName().endsWith(".dex");
    }

    @Override // org.junit.rules.TestRule
    public Statement apply(final Statement statement, Description description) {
        return new Statement() { // from class: androidx.test.ext.junit.rules.DeleteFilesRule.1
            @Override // org.junit.runners.model.Statement
            public void evaluate() {
                String str;
                Context applicationContext = ApplicationProvider.getApplicationContext();
                ArrayList arrayList = new ArrayList();
                arrayList.add(new File(applicationContext.getApplicationInfo().dataDir));
                arrayList.add(Environment.getExternalStorageDirectory());
                arrayList.add(Environment.getDownloadCacheDirectory());
                if (applicationContext.getExternalCacheDir() != null) {
                    arrayList.add(applicationContext.getExternalCacheDir());
                }
                int i = Build.VERSION.SDK_INT;
                arrayList.add(applicationContext.getNoBackupFilesDir());
                if (i >= 24) {
                    str = applicationContext.getApplicationInfo().deviceProtectedDataDir;
                    arrayList.add(new File(str));
                }
                HashSet hashSet = new HashSet();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    DeleteFilesRule.findFilesRecursively(hashSet, (File) it.next());
                }
                try {
                    statement.evaluate();
                } finally {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        DeleteFilesRule.deleteFilesRecursively(hashSet, (File) it2.next());
                    }
                }
            }
        };
    }
}
