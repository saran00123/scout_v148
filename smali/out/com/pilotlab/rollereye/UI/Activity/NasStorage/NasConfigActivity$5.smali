.class Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$5;
.super Ljava/lang/Object;
.source "NasConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
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

    .line 321
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 324
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 325
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->finish()V

    return-void
.end method
