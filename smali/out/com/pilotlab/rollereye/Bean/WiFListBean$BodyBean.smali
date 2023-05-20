.class public Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;
.super Ljava/lang/Object;
.source "WiFListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/WiFListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BodyBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;
    }
.end annotation


# instance fields
.field private status:I

.field private wifis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;->status:I

    return v0
.end method

.method public getWifis()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;->wifis:Ljava/util/List;

    return-object v0
.end method

.method public setStatus(I)V
    .registers 2

    .line 52
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;->status:I

    return-void
.end method

.method public setWifis(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;",
            ">;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;->wifis:Ljava/util/List;

    return-void
.end method
