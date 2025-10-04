.class Lcom/jcraft/jzlib/Deflate$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jzlib/Deflate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field func:I

.field good_length:I

.field max_chain:I

.field max_lazy:I

.field nice_length:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/jcraft/jzlib/Deflate$Config;->good_length:I

    .line 5
    .line 6
    iput p2, p0, Lcom/jcraft/jzlib/Deflate$Config;->max_lazy:I

    .line 7
    .line 8
    iput p3, p0, Lcom/jcraft/jzlib/Deflate$Config;->nice_length:I

    .line 9
    .line 10
    iput p4, p0, Lcom/jcraft/jzlib/Deflate$Config;->max_chain:I

    .line 11
    .line 12
    iput p5, p0, Lcom/jcraft/jzlib/Deflate$Config;->func:I

    .line 13
    .line 14
    return-void
.end method
