package com.android.volley.toolbox;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;

/* loaded from: classes.dex */
public class NetworkImageView extends ImageView {

    @Nullable
    private Bitmap mDefaultImageBitmap;

    @Nullable
    private Drawable mDefaultImageDrawable;
    private int mDefaultImageId;

    @Nullable
    private Bitmap mErrorImageBitmap;

    @Nullable
    private Drawable mErrorImageDrawable;
    private int mErrorImageId;
    private ImageLoader.ImageContainer mImageContainer;
    private ImageLoader mImageLoader;
    private String mUrl;

    /* renamed from: com.android.volley.toolbox.NetworkImageView$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements ImageLoader.ImageListener {
        final /* synthetic */ boolean val$isInLayoutPass;

        public AnonymousClass1(boolean z) {
            this.val$isInLayoutPass = z;
        }

        @Override // com.android.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            if (NetworkImageView.this.mErrorImageId != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.mErrorImageId);
            } else if (NetworkImageView.this.mErrorImageDrawable != null) {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                networkImageView2.setImageDrawable(networkImageView2.mErrorImageDrawable);
            } else if (NetworkImageView.this.mErrorImageBitmap != null) {
                NetworkImageView networkImageView3 = NetworkImageView.this;
                networkImageView3.setImageBitmap(networkImageView3.mErrorImageBitmap);
            }
        }

        @Override // com.android.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(final ImageLoader.ImageContainer imageContainer, boolean z) {
            if (z && this.val$isInLayoutPass) {
                NetworkImageView.this.post(new Runnable() { // from class: com.android.volley.toolbox.NetworkImageView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1.this.onResponse(imageContainer, false);
                    }
                });
                return;
            }
            if (imageContainer.getBitmap() != null) {
                NetworkImageView.this.setImageBitmap(imageContainer.getBitmap());
                return;
            }
            if (NetworkImageView.this.mDefaultImageId != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.mDefaultImageId);
            } else if (NetworkImageView.this.mDefaultImageDrawable != null) {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                networkImageView2.setImageDrawable(networkImageView2.mDefaultImageDrawable);
            } else if (NetworkImageView.this.mDefaultImageBitmap != null) {
                NetworkImageView networkImageView3 = NetworkImageView.this;
                networkImageView3.setImageBitmap(networkImageView3.mDefaultImageBitmap);
            }
        }
    }

    public NetworkImageView(Context context) {
        this(context, null);
    }

    private void setDefaultImageOrNull() {
        int i = this.mDefaultImageId;
        if (i != 0) {
            setImageResource(i);
            return;
        }
        Drawable drawable = this.mDefaultImageDrawable;
        if (drawable != null) {
            setImageDrawable(drawable);
            return;
        }
        Bitmap bitmap = this.mDefaultImageBitmap;
        if (bitmap != null) {
            setImageBitmap(bitmap);
        } else {
            setImageBitmap(null);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void loadImageIfNecessary(boolean z) {
        boolean z2;
        boolean z3;
        int i;
        int width = getWidth();
        int height = getHeight();
        ImageView.ScaleType scaleType = getScaleType();
        boolean z4 = true;
        if (getLayoutParams() != null) {
            if (getLayoutParams().width == -2) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (getLayoutParams().height == -2) {
                z3 = true;
                if (z2 || !z3) {
                    z4 = false;
                }
                if (width != 0 && height == 0 && !z4) {
                    return;
                }
                if (!TextUtils.isEmpty(this.mUrl)) {
                    ImageLoader.ImageContainer imageContainer = this.mImageContainer;
                    if (imageContainer != null) {
                        imageContainer.cancelRequest();
                        this.mImageContainer = null;
                    }
                    setDefaultImageOrNull();
                    return;
                }
                ImageLoader.ImageContainer imageContainer2 = this.mImageContainer;
                if (imageContainer2 != null && imageContainer2.getRequestUrl() != null) {
                    if (this.mImageContainer.getRequestUrl().equals(this.mUrl)) {
                        return;
                    }
                    this.mImageContainer.cancelRequest();
                    setDefaultImageOrNull();
                }
                if (z2) {
                    width = 0;
                }
                if (z3) {
                    i = 0;
                } else {
                    i = height;
                }
                this.mImageContainer = this.mImageLoader.get(this.mUrl, new AnonymousClass1(z), width, i, scaleType);
                return;
            }
        } else {
            z2 = false;
        }
        z3 = false;
        if (z2) {
        }
        z4 = false;
        if (width != 0) {
        }
        if (!TextUtils.isEmpty(this.mUrl)) {
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        ImageLoader.ImageContainer imageContainer = this.mImageContainer;
        if (imageContainer != null) {
            imageContainer.cancelRequest();
            setImageBitmap(null);
            this.mImageContainer = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        loadImageIfNecessary(true);
    }

    public void setDefaultImageBitmap(Bitmap bitmap) {
        this.mDefaultImageId = 0;
        this.mDefaultImageDrawable = null;
        this.mDefaultImageBitmap = bitmap;
    }

    public void setDefaultImageDrawable(@Nullable Drawable drawable) {
        this.mDefaultImageId = 0;
        this.mDefaultImageBitmap = null;
        this.mDefaultImageDrawable = drawable;
    }

    public void setDefaultImageResId(int i) {
        this.mDefaultImageBitmap = null;
        this.mDefaultImageDrawable = null;
        this.mDefaultImageId = i;
    }

    public void setErrorImageBitmap(Bitmap bitmap) {
        this.mErrorImageId = 0;
        this.mErrorImageDrawable = null;
        this.mErrorImageBitmap = bitmap;
    }

    public void setErrorImageDrawable(@Nullable Drawable drawable) {
        this.mErrorImageId = 0;
        this.mErrorImageBitmap = null;
        this.mErrorImageDrawable = drawable;
    }

    public void setErrorImageResId(int i) {
        this.mErrorImageBitmap = null;
        this.mErrorImageDrawable = null;
        this.mErrorImageId = i;
    }

    @MainThread
    public void setImageUrl(String str, ImageLoader imageLoader) {
        Threads.throwIfNotOnMainThread();
        this.mUrl = str;
        this.mImageLoader = imageLoader;
        loadImageIfNecessary(false);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
