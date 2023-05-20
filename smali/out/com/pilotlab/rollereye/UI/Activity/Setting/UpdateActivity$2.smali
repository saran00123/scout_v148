.class Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$2;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)V
    .registers 2

    .line 344
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 347
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 348
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->finish()V

    return-void
.end method
