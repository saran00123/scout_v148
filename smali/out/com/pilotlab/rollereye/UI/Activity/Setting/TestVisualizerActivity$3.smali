.class Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$3;
.super Ljava/lang/Object;
.source "TestVisualizerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->initPlayer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;)V
    .registers 2

    .line 366
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 369
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->audioSessionId:I

    .line 370
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 371
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;)V

    return-void
.end method
