package com.airbnb.lottie.manager;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import androidx.annotation.Nullable;
import com.airbnb.lottie.ImageAssetDelegate;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
public class ImageAssetManager {
    private static final Object bitmapHashLock = new Object();

    @Nullable
    private final Context context;

    @Nullable
    private ImageAssetDelegate delegate;
    private final Map<String, LottieImageAsset> imageAssets;
    private final String imagesFolder;

    public ImageAssetManager(Drawable.Callback callback, String str, ImageAssetDelegate imageAssetDelegate, Map<String, LottieImageAsset> map) {
        if (!TextUtils.isEmpty(str) && str.charAt(str.length() - 1) != '/') {
            this.imagesFolder = str.concat("/");
        } else {
            this.imagesFolder = str;
        }
        this.imageAssets = map;
        setDelegate(imageAssetDelegate);
        if (!(callback instanceof View)) {
            this.context = null;
        } else {
            this.context = ((View) callback).getContext().getApplicationContext();
        }
    }

    private Bitmap putBitmap(String str, @Nullable Bitmap bitmap) {
        synchronized (bitmapHashLock) {
            this.imageAssets.get(str).setBitmap(bitmap);
        }
        return bitmap;
    }

    @Nullable
    public Bitmap bitmapForId(String str) {
        LottieImageAsset lottieImageAsset = this.imageAssets.get(str);
        if (lottieImageAsset == null) {
            return null;
        }
        Bitmap bitmap = lottieImageAsset.getBitmap();
        if (bitmap != null) {
            return bitmap;
        }
        ImageAssetDelegate imageAssetDelegate = this.delegate;
        if (imageAssetDelegate != null) {
            Bitmap fetchBitmap = imageAssetDelegate.fetchBitmap(lottieImageAsset);
            if (fetchBitmap != null) {
                putBitmap(str, fetchBitmap);
            }
            return fetchBitmap;
        }
        Context context = this.context;
        if (context == null) {
            return null;
        }
        String fileName = lottieImageAsset.getFileName();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (fileName.startsWith(new ObfuscatedString(new long[]{-1763702729233941918L, 8539279667790708691L}).toString()) && fileName.indexOf(new ObfuscatedString(new long[]{-1839266262405781985L, -3997254489989198738L}).toString()) > 0) {
            try {
                byte[] decode = Base64.decode(fileName.substring(fileName.indexOf(44) + 1), 0);
                return putBitmap(str, Utils.resizeBitmapIfNeeded(BitmapFactory.decodeByteArray(decode, 0, decode.length, options), lottieImageAsset.getWidth(), lottieImageAsset.getHeight()));
            } catch (IllegalArgumentException e) {
                Logger.warning(new ObfuscatedString(new long[]{-1177722101968205339L, -8974943429701015710L, -5168021267325574645L, 8664285282230929413L, 1604053039144371736L, 7229732376058735942L, 2697937257859937935L}).toString(), e);
                return null;
            }
        }
        try {
            if (!TextUtils.isEmpty(this.imagesFolder)) {
                try {
                    Bitmap decodeStream = BitmapFactory.decodeStream(context.getAssets().open(this.imagesFolder + fileName), null, options);
                    if (decodeStream == null) {
                        Logger.warning(new ObfuscatedString(new long[]{5708486012384174947L, 2418463963181800003L, -7321143416976061677L}).toString() + str + new ObfuscatedString(new long[]{-6597404381190611346L, -6714652988222283226L, 136192812311750673L}).toString());
                        return null;
                    }
                    return putBitmap(str, Utils.resizeBitmapIfNeeded(decodeStream, lottieImageAsset.getWidth(), lottieImageAsset.getHeight()));
                } catch (IllegalArgumentException e2) {
                    Logger.warning(new ObfuscatedString(new long[]{-1163737707100635221L, -7888065918396216654L, 6319590567704459644L, 1427734310903067684L}).toString() + str + new ObfuscatedString(new long[]{6098738604271588417L, -3804512606716665699L}).toString(), e2);
                    return null;
                }
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{8836940671113663236L, 4082223059601312383L, -166248180334418516L, 262815253607192893L, -4110048417963549846L, 4851039926993179477L, -1332104335337110052L, 7018934188841244372L, -5106957014098062470L, 8214746578071077003L, 4705752758176006160L, 8263348883912401843L, 4579263015594357443L, 7895917488648396278L, -9130413949635777895L, -6875816285687051126L, 5343057984760099498L, 3213969928155307724L}).toString());
        } catch (IOException e3) {
            Logger.warning(new ObfuscatedString(new long[]{-8451749757312990392L, -3181734387396118506L, -6089168545356824930L, -1018555255963917944L}).toString(), e3);
            return null;
        }
    }

    @Nullable
    public LottieImageAsset getImageAssetById(String str) {
        return this.imageAssets.get(str);
    }

    public boolean hasSameContext(Context context) {
        if (context == null) {
            if (this.context != null) {
                return false;
            }
            return true;
        }
        if (this.context instanceof Application) {
            context = context.getApplicationContext();
        }
        if (context != this.context) {
            return false;
        }
        return true;
    }

    public void setDelegate(@Nullable ImageAssetDelegate imageAssetDelegate) {
        this.delegate = imageAssetDelegate;
    }

    @Nullable
    public Bitmap updateBitmap(String str, @Nullable Bitmap bitmap) {
        if (bitmap == null) {
            LottieImageAsset lottieImageAsset = this.imageAssets.get(str);
            Bitmap bitmap2 = lottieImageAsset.getBitmap();
            lottieImageAsset.setBitmap(null);
            return bitmap2;
        }
        Bitmap bitmap3 = this.imageAssets.get(str).getBitmap();
        putBitmap(str, bitmap);
        return bitmap3;
    }
}
