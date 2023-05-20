.class public Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean$DataBean;
.super Ljava/lang/Object;
.source "MemoryBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private size:J

.field private totalSize:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize()J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean$DataBean;->size:J

    return-wide v0
.end method

.method public getTotalSize()J
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean$DataBean;->totalSize:J

    return-wide v0
.end method

.method public setSize(J)V
    .registers 3

    .line 59
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean$DataBean;->size:J

    return-void
.end method

.method public setTotalSize(J)V
    .registers 3

    .line 67
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean$DataBean;->totalSize:J

    return-void
.end method
