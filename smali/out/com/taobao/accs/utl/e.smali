.class public Lcom/taobao/accs/utl/e;
.super Lcom/taobao/accs/utl/RomInfoCollecter;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/taobao/accs/utl/RomInfoCollecter;-><init>()V

    return-void
.end method


# virtual methods
.method public collect()Ljava/lang/String;
    .registers 3

    .line 13
    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 14
    iget-object v1, p0, Lcom/taobao/accs/utl/e;->mNextCollecter:Lcom/taobao/accs/utl/RomInfoCollecter;

    if-eqz v1, :cond_10

    .line 15
    iget-object v0, p0, Lcom/taobao/accs/utl/e;->mNextCollecter:Lcom/taobao/accs/utl/RomInfoCollecter;

    invoke-virtual {v0}, Lcom/taobao/accs/utl/RomInfoCollecter;->collect()Ljava/lang/String;

    move-result-object v0

    :cond_10
    return-object v0
.end method
