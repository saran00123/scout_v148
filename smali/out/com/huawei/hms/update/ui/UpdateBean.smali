.class public Lcom/huawei/hms/update/ui/UpdateBean;
.super Ljava/lang/Object;
.source "UpdateBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/ArrayList;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/huawei/hms/update/ui/UpdateBean;->g:Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/update/ui/UpdateBean;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/hms/update/ui/UpdateBean;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/update/ui/UpdateBean;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/hms/update/ui/UpdateBean;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/update/ui/UpdateBean;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/update/ui/UpdateBean;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/update/ui/UpdateBean;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/update/ui/UpdateBean;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getClientAppName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/update/ui/UpdateBean;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/hms/update/ui/UpdateBean;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTypeList()Ljava/util/ArrayList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/update/ui/UpdateBean;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/huawei/hms/update/ui/UpdateBean;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public isNeedConfirm()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/update/ui/UpdateBean;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/update/ui/UpdateBean;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setClientAppId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/update/ui/UpdateBean;->d:Ljava/lang/String;

    return-void
.end method

.method public setClientAppName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/update/ui/UpdateBean;->e:Ljava/lang/String;

    return-void
.end method

.method public setClientPackageName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/update/ui/UpdateBean;->b:Ljava/lang/String;

    return-void
.end method

.method public setClientVersionCode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/huawei/hms/update/ui/UpdateBean;->c:I

    return-void
.end method

.method public setHmsOrApkUpgrade(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/huawei/hms/update/ui/UpdateBean;->a:Z

    return-void
.end method

.method public setNeedConfirm(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/huawei/hms/update/ui/UpdateBean;->g:Z

    return-void
.end method

.method public setTypeList(Ljava/util/ArrayList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/update/ui/UpdateBean;->f:Ljava/util/ArrayList;

    return-void
.end method
