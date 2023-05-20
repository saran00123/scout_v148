.class Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$1;
.super Ljava/lang/Object;
.source "AccoutPwdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 154
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 155
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->finish()V

    return-void
.end method
