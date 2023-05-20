.class Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4$1;
.super Ljava/lang/Object;
.source "HelloActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 316
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 317
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->finish()V

    return-void
.end method
