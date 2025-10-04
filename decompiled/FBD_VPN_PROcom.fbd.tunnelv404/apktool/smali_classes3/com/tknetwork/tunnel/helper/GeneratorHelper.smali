.class public Lcom/tknetwork/tunnel/helper/GeneratorHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tknetwork/tunnel/utils/Generator$GeneratorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/helper/GeneratorHelper$GeneratorListener;
    }
.end annotation


# instance fields
.field private ab:Landroidx/appcompat/app/AlertDialog;

.field private final context:Landroid/content/Context;

.field private listener:Lcom/tknetwork/tunnel/helper/GeneratorHelper$GeneratorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tknetwork/tunnel/helper/GeneratorHelper;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGeneratePayload(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/helper/GeneratorHelper;->listener:Lcom/tknetwork/tunnel/helper/GeneratorHelper$GeneratorListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tknetwork/tunnel/helper/GeneratorHelper$GeneratorListener;->onGenerate(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onGeneratorClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/helper/GeneratorHelper;->listener:Lcom/tknetwork/tunnel/helper/GeneratorHelper$GeneratorListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tknetwork/tunnel/helper/GeneratorHelper$GeneratorListener;->onCancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCancelListener(Lcom/tknetwork/tunnel/helper/GeneratorHelper$GeneratorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/helper/GeneratorHelper;->listener:Lcom/tknetwork/tunnel/helper/GeneratorHelper$GeneratorListener;

    .line 2
    .line 3
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/utils/Generator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tknetwork/tunnel/helper/GeneratorHelper;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/tknetwork/tunnel/utils/Generator;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/tknetwork/tunnel/utils/Generator;->setGeneratorListener(Lcom/tknetwork/tunnel/utils/Generator$GeneratorListener;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/utils/Generator;->show()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
