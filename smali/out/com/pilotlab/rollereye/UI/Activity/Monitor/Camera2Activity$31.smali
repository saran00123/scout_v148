.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$31;
.super Ljava/lang/Object;
.source "Camera2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->saveWayPoint()V
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

    .line 2406
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$31;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 2409
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
