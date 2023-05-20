.class public Lcom/ut/device/UTDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 21
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setExtendFactor(Ljava/lang/String;)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/ta/utdid2/device/c;->setExtendFactor(Ljava/lang/String;)V

    return-void
.end method
