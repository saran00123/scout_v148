.class Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$4;
.super Ljava/lang/Object;
.source "CloudPreviewVideoFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->initPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    return-void
.end method
