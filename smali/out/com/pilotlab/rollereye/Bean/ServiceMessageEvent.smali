.class public Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent;
.super Ljava/lang/Object;
.source "ServiceMessageEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;
    }
.end annotation


# static fields
.field public static final SERVICE_START:I = 0x1

.field public static final SERVICE_STOP:I = 0x2


# instance fields
.field private message:Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent;->message:Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent;->message:Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;

    return-object v0
.end method

.method public setMessage(Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent;->message:Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;

    return-void
.end method
