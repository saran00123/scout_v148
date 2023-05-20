.class public abstract Lcom/taobao/accs/utl/RomInfoCollecter;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field protected mNextCollecter:Lcom/taobao/accs/utl/RomInfoCollecter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCollecter()Lcom/taobao/accs/utl/RomInfoCollecter;
    .registers 1

    .line 13
    new-instance v0, Lcom/taobao/accs/utl/e;

    invoke-direct {v0}, Lcom/taobao/accs/utl/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract collect()Ljava/lang/String;
.end method
