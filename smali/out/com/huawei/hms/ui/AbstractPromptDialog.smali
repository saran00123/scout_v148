.class public abstract Lcom/huawei/hms/ui/AbstractPromptDialog;
.super Lcom/huawei/hms/ui/AbstractDialog;
.source "AbstractPromptDialog.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/ui/AbstractDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetNegativeButtonString(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onGetTitleString(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getmContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    .line 2
    invoke-static {p1}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->setmContext(Landroid/content/Context;)V

    :cond_9
    const-string p1, "hms_bindfaildlg_title"

    .line 4
    invoke-static {p1}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
