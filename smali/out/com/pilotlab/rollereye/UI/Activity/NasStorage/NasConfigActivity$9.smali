.class Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$9;
.super Ljava/lang/Object;
.source "NasConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V
    .registers 2

    .line 405
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 408
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V

    .line 409
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
