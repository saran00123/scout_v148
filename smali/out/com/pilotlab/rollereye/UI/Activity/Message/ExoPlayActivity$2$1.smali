.class Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity$2$1;
.super Ljava/lang/Object;
.source "ExoPlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity$2;->onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity$2;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity$2;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity$2$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 207
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
