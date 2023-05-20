.class Lcom/pilotlab/rollereye/RollerEyeApplication$2;
.super Ljava/lang/Object;
.source "RollerEyeApplication.java"

# interfaces
.implements Lcom/alibaba/sdk/android/push/CommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/RollerEyeApplication;->bindAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/RollerEyeApplication;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/pilotlab/rollereye/RollerEyeApplication$2;->this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 151
    invoke-static {}, Lcom/pilotlab/rollereye/RollerEyeApplication;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u7ed1\u5b9a\u8d26\u53f7\u5931\u8d25"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 3

    .line 146
    invoke-static {}, Lcom/pilotlab/rollereye/RollerEyeApplication;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u7ed1\u5b9a\u8d26\u53f7\u6210\u529f"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
