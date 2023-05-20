.class public Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;
.super Ljava/lang/Object;
.source "NormalMessageEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/NormalMessageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# instance fields
.field private body:Ljava/lang/String;

.field private tag:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;->tag:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;->tag:I

    .line 34
    iput-object p2, p0, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;->tag:I

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;->body:Ljava/lang/String;

    return-void
.end method

.method public setTag(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;->tag:I

    return-void
.end method
