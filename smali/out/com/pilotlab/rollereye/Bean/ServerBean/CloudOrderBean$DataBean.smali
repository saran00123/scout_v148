.class public Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;
.super Ljava/lang/Object;
.source "CloudOrderBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private amount:I

.field private date:Ljava/lang/String;

.field private duration:I

.field private expireDate:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->amount:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->duration:I

    return v0
.end method

.method public getExpireDate()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->expireDate:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .line 126
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->status:I

    return v0
.end method

.method public setAmount(I)V
    .registers 2

    .line 90
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->amount:I

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .registers 2

    .line 74
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->duration:I

    return-void
.end method

.method public setExpireDate(Ljava/lang/String;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->expireDate:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->productId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 130
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->status:I

    return-void
.end method
