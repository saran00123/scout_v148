.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$15;
.super Ljava/lang/Object;
.source "Camera2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V
    .registers 2

    .line 1496
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$15;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1499
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
