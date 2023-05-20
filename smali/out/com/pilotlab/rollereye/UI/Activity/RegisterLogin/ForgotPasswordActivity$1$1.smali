.class Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1$1;
.super Ljava/lang/Object;
.source "ForgotPasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/ResetPasswordBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 121
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->finish()V

    .line 122
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
