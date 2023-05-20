.class Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4$1;
.super Ljava/lang/Object;
.source "TwoSetpAuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 218
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 219
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->finish()V

    return-void
.end method
