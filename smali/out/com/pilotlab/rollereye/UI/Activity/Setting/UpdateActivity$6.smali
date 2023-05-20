.class Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$6;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->update()V
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

    .line 435
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 438
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
