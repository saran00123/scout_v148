.class public Lcom/pilotlab/rollereye/P2P/P2PClient$ViedwoStream;
.super Ljava/lang/Object;
.source "P2PClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/P2P/P2PClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViedwoStream"
.end annotation


# instance fields
.field public actFrameData:[B

.field public actualFrameInfoSize:[I

.field public actualFrameSize:[I

.field public expectedFrameSize:[I

.field public frameIdx:[I

.field public frameInfo:[B

.field public recvFrameData:[B

.field final synthetic this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;


# direct methods
.method private constructor <init>(Lcom/pilotlab/rollereye/P2P/P2PClient;)V
    .registers 3

    .line 92
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$ViedwoStream;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x40000

    .line 93
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$ViedwoStream;->recvFrameData:[B

    const/16 p1, 0x22

    .line 94
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$ViedwoStream;->frameInfo:[B

    const/4 p1, 0x1

    .line 95
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$ViedwoStream;->actualFrameSize:[I

    .line 96
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$ViedwoStream;->expectedFrameSize:[I

    .line 97
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$ViedwoStream;->actualFrameInfoSize:[I

    .line 98
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$ViedwoStream;->frameIdx:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/P2P/P2PClient;Lcom/pilotlab/rollereye/P2P/P2PClient$1;)V
    .registers 3

    .line 83
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/P2P/P2PClient$ViedwoStream;-><init>(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    return-void
.end method
