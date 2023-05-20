.class Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$6;
.super Ljava/lang/Object;
.source "HelloActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)V
    .registers 2

    .line 430
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 433
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 434
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    .line 435
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->startActivity(Landroid/content/Intent;)V

    .line 437
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->finish()V

    return-void
.end method
