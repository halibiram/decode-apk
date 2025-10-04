package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public class ScanContract extends ActivityResultContract<ScanOptions, ScanIntentResult> {
    @Override // androidx.activity.result.contract.ActivityResultContract
    @NonNull
    public Intent createIntent(@NonNull Context context, ScanOptions scanOptions) {
        return scanOptions.createScanIntent(context);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.activity.result.contract.ActivityResultContract
    public ScanIntentResult parseResult(int i, @Nullable Intent intent) {
        return ScanIntentResult.parseActivityResult(i, intent);
    }
}
