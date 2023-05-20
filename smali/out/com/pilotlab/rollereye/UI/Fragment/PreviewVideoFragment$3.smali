.class Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$3;
.super Ljava/lang/Object;
.source "PreviewVideoFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->iniSufaView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    return-void
.end method
