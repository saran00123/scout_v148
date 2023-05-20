.class Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity$1;
.super Ljava/lang/Object;
.source "NasPathActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 194
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
