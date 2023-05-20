.class public final Lcom/google/android/gms/measurement/internal/zzec;
.super Lcom/google/android/gms/measurement/internal/zzf;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.2"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzeb;

.field private zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfl;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzfl;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzeb;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const-string v1, "google_app_measurement_local.db"

    .line 4
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzeb;-><init>(Lcom/google/android/gms/measurement/internal/zzec;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzec;->zza:Lcom/google/android/gms/measurement/internal/zzeb;

    return-void
.end method

.method private final zzq(I[B)Z
    .registers 19
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzec;->zzb:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    return v2

    :cond_b
    new-instance v3, Landroid/content/ContentValues;

    .line 2
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "type"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "entry"

    move-object/from16 v4, p2

    .line 4
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const/4 v4, 0x5

    move v5, v2

    move v6, v4

    :goto_28
    if-ge v5, v4, :cond_12d

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 6
    :try_start_2c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzec;->zzo()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_30
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2c .. :try_end_30} :catch_fb
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2c .. :try_end_30} :catch_e9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_30} :catch_c2
    .catchall {:try_start_2c .. :try_end_30} :catchall_bf

    if-nez v9, :cond_35

    :try_start_32
    iput-boolean v7, v1, Lcom/google/android/gms/measurement/internal/zzec;->zzb:Z

    return v2

    .line 7
    :cond_35
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "select count(1) from messages"

    .line 8
    invoke-virtual {v9, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_3e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_32 .. :try_end_3e} :catch_bb
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_32 .. :try_end_3e} :catch_ea
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_3e} :catch_b7
    .catchall {:try_start_32 .. :try_end_3e} :catchall_b4

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_54

    .line 9
    :try_start_42
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 10
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11
    :try_end_4c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_42 .. :try_end_4c} :catch_52
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_42 .. :try_end_4c} :catch_b2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_42 .. :try_end_4c} :catch_50
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4d

    goto :goto_54

    :catchall_4d
    move-exception v0

    goto/16 :goto_121

    :catch_50
    move-exception v0

    goto :goto_b9

    :catch_52
    move-exception v0

    goto :goto_bd

    :cond_54
    :goto_54
    const-wide/32 v13, 0x186a0

    cmp-long v0, v11, v13

    const-string v15, "messages"

    if-ltz v0, :cond_9f

    :try_start_5d
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v4, "Data loss, local db full"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    sub-long/2addr v13, v11

    const-wide/16 v11, 0x1

    add-long/2addr v13, v11

    new-array v0, v7, [Ljava/lang/String;

    .line 13
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v4, "rowid in (select rowid from messages order by rowid asc limit ?)"

    .line 14
    invoke-virtual {v9, v15, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v11, v0

    cmp-long v0, v11, v13

    if-eqz v0, :cond_9f

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v4, "Different delete count than expected in local db. expected, received, difference"

    .line 17
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 18
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sub-long/2addr v13, v11

    .line 19
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 20
    invoke-virtual {v0, v4, v2, v7, v11}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    :cond_9f
    invoke-virtual {v9, v15, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 22
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 23
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5d .. :try_end_a8} :catch_52
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5d .. :try_end_a8} :catch_b2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5d .. :try_end_a8} :catch_50
    .catchall {:try_start_5d .. :try_end_a8} :catchall_4d

    if-eqz v10, :cond_ad

    .line 28
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 29
    :cond_ad
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x1

    return v2

    :catch_b2
    move-object v8, v10

    goto :goto_ea

    :catchall_b4
    move-exception v0

    goto/16 :goto_122

    :catch_b7
    move-exception v0

    move-object v10, v8

    :goto_b9
    move-object v8, v9

    goto :goto_c4

    :catch_bb
    move-exception v0

    move-object v10, v8

    :goto_bd
    move-object v8, v9

    goto :goto_fd

    :catchall_bf
    move-exception v0

    move-object v9, v8

    goto :goto_122

    :catch_c2
    move-exception v0

    move-object v10, v8

    :goto_c4
    if-eqz v8, :cond_cf

    .line 24
    :try_start_c6
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 25
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_cf
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v4, "Error writing entry to local database"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzec;->zzb:Z
    :try_end_e1
    .catchall {:try_start_c6 .. :try_end_e1} :catchall_11f

    if-eqz v10, :cond_e6

    .line 28
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_e6
    if-eqz v8, :cond_119

    goto :goto_116

    :catch_e9
    move-object v9, v8

    :catch_ea
    :goto_ea
    int-to-long v10, v6

    .line 30
    :try_start_eb
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_ee
    .catchall {:try_start_eb .. :try_end_ee} :catchall_b4

    add-int/lit8 v6, v6, 0x14

    if-eqz v8, :cond_f5

    .line 28
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_f5
    if-eqz v9, :cond_119

    .line 29
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_119

    :catch_fb
    move-exception v0

    move-object v10, v8

    .line 34
    :goto_fd
    :try_start_fd
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v4, "Error writing entry; local database full"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzec;->zzb:Z
    :try_end_10f
    .catchall {:try_start_fd .. :try_end_10f} :catchall_11f

    if-eqz v10, :cond_114

    .line 28
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_114
    if-eqz v8, :cond_119

    .line 29
    :goto_116
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_119
    :goto_119
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x5

    goto/16 :goto_28

    :catchall_11f
    move-exception v0

    move-object v9, v8

    :goto_121
    move-object v8, v10

    :goto_122
    if-eqz v8, :cond_127

    .line 28
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_127
    if-eqz v9, :cond_12c

    .line 29
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 35
    :cond_12c
    throw v0

    .line 29
    :cond_12d
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method protected final zze()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzec;->zzo()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string v1, "messages"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_25} :catch_26

    :cond_25
    return-void

    :catch_26
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/measurement/internal/zzas;)Z
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzas;Landroid/os/Parcel;I)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_24

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzc()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    return v1

    .line 9
    :cond_24
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzec;->zzq(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzj(Lcom/google/android/gms/measurement/internal/zzkg;)Z
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Lcom/google/android/gms/measurement/internal/zzkg;Landroid/os/Parcel;I)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_24

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzc()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    return v1

    :cond_24
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzec;->zzq(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzk(Lcom/google/android/gms/measurement/internal/zzaa;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzX(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 3
    array-length v0, p1

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_20

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzc()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_20
    const/4 v0, 0x2

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzec;->zzq(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzl(I)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "rowid"

    const-string v3, "Error reading entries from local database"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzec;->zzb:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_f

    return-object v4

    :cond_f
    new-instance v5, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzec;->zzp()Z

    move-result v0

    if-eqz v0, :cond_274

    const/4 v6, 0x5

    const/4 v7, 0x0

    move v9, v6

    move v8, v7

    :goto_1e
    if-ge v8, v6, :cond_264

    const/4 v10, 0x1

    .line 4
    :try_start_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzec;->zzo()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_21 .. :try_end_25} :catch_23b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_21 .. :try_end_25} :catch_228
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_25} :catch_203
    .catchall {:try_start_21 .. :try_end_25} :catchall_1ff

    if-nez v15, :cond_2a

    :try_start_27
    iput-boolean v10, v1, Lcom/google/android/gms/measurement/internal/zzec;->zzb:Z

    return-object v4

    .line 5
    :cond_2a
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "3"
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_27 .. :try_end_2f} :catch_1fb
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_27 .. :try_end_2f} :catch_1f8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_2f} :catch_1f4
    .catchall {:try_start_27 .. :try_end_2f} :catchall_1ef

    :try_start_2f
    const-string v12, "messages"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "type=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid desc"

    const-string v19, "1"
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_1e0

    move-object v11, v15

    move-object/from16 p1, v15

    move-object v15, v0

    .line 6
    :try_start_47
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_1dc

    .line 7
    :try_start_4b
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const-wide/16 v20, -0x1

    if-eqz v0, :cond_5d

    .line 9
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_1d8

    if-eqz v11, :cond_78

    .line 8
    :try_start_59
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_78

    :cond_5d
    if-eqz v11, :cond_76

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_76

    :catchall_63
    move-exception v0

    move-object/from16 v14, p1

    goto/16 :goto_1f1

    :catch_68
    move-exception v0

    move-object/from16 v14, p1

    goto/16 :goto_1f6

    :catch_6d
    move-object/from16 v14, p1

    goto/16 :goto_1f9

    :catch_71
    move-exception v0

    move-object/from16 v14, p1

    goto/16 :goto_1fd

    :cond_76
    :goto_76
    move-wide/from16 v12, v20

    :cond_78
    :goto_78
    cmp-long v0, v12, v20

    if-eqz v0, :cond_89

    const-string v0, "rowid<?"

    new-array v11, v10, [Ljava/lang/String;

    .line 11
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    move-object v14, v0

    move-object v15, v11

    goto :goto_8b

    :cond_89
    move-object v14, v4

    move-object v15, v14

    :goto_8b
    const-string v0, "type"

    const-string v11, "entry"

    filled-new-array {v2, v0, v11}, [Ljava/lang/String;

    move-result-object v13

    const-string v12, "messages"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid asc"

    const/16 v0, 0x64

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v11, p1

    .line 13
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_a7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_59 .. :try_end_a7} :catch_71
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_59 .. :try_end_a7} :catch_6d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_59 .. :try_end_a7} :catch_68
    .catchall {:try_start_59 .. :try_end_a7} :catchall_63

    .line 14
    :cond_a7
    :goto_a7
    :try_start_a7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_187

    .line 15
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 16
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v12, 0x2

    .line 17
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    if-nez v0, :cond_f1

    .line 18
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_c0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a7 .. :try_end_c0} :catch_1d3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_a7 .. :try_end_c0} :catch_1cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a7 .. :try_end_c0} :catch_1cb
    .catchall {:try_start_a7 .. :try_end_c0} :catchall_1c6

    .line 19
    :try_start_c0
    array-length v0, v13

    invoke-virtual {v12, v13, v7, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 20
    invoke-virtual {v12, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 21
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzas;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzas;
    :try_end_cf
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_c0 .. :try_end_cf} :catch_da
    .catchall {:try_start_c0 .. :try_end_cf} :catchall_d8

    .line 24
    :try_start_cf
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_a7

    .line 25
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_cf .. :try_end_d7} :catch_1d3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_cf .. :try_end_d7} :catch_1cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_cf .. :try_end_d7} :catch_1cb
    .catchall {:try_start_cf .. :try_end_d7} :catchall_1c6

    goto :goto_a7

    :catchall_d8
    move-exception v0

    goto :goto_ed

    .line 10
    :catch_da
    :try_start_da
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v13, "Failed to load event from local database"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_da .. :try_end_e9} :catchall_d8

    .line 24
    :try_start_e9
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    goto :goto_a7

    :goto_ed
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 48
    throw v0

    :cond_f1
    if-ne v0, v10, :cond_129

    .line 26
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_f7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e9 .. :try_end_f7} :catch_1d3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_e9 .. :try_end_f7} :catch_1cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e9 .. :try_end_f7} :catch_1cb
    .catchall {:try_start_e9 .. :try_end_f7} :catchall_1c6

    .line 27
    :try_start_f7
    array-length v0, v13

    invoke-virtual {v12, v13, v7, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 28
    invoke-virtual {v12, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 29
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzkg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzkg;
    :try_end_106
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_f7 .. :try_end_106} :catch_10c
    .catchall {:try_start_f7 .. :try_end_106} :catchall_10a

    .line 32
    :try_start_106
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_109
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_106 .. :try_end_109} :catch_1d3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_106 .. :try_end_109} :catch_1cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_106 .. :try_end_109} :catch_1cb
    .catchall {:try_start_106 .. :try_end_109} :catchall_1c6

    goto :goto_11f

    :catchall_10a
    move-exception v0

    goto :goto_125

    .line 48
    :catch_10c
    :try_start_10c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v13, "Failed to load user property from local database"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V
    :try_end_11b
    .catchall {:try_start_10c .. :try_end_11b} :catchall_10a

    .line 32
    :try_start_11b
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    move-object v0, v4

    :goto_11f
    if-eqz v0, :cond_a7

    .line 33
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a7

    .line 32
    :goto_125
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 49
    throw v0

    :cond_129
    if-ne v0, v12, :cond_162

    .line 34
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_12f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_11b .. :try_end_12f} :catch_1d3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_11b .. :try_end_12f} :catch_1cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11b .. :try_end_12f} :catch_1cb
    .catchall {:try_start_11b .. :try_end_12f} :catchall_1c6

    .line 35
    :try_start_12f
    array-length v0, v13

    invoke-virtual {v12, v13, v7, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 36
    invoke-virtual {v12, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaa;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzaa;
    :try_end_13e
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_12f .. :try_end_13e} :catch_144
    .catchall {:try_start_12f .. :try_end_13e} :catchall_142

    .line 42
    :try_start_13e
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_141
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_13e .. :try_end_141} :catch_1d3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_13e .. :try_end_141} :catch_1cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13e .. :try_end_141} :catch_1cb
    .catchall {:try_start_13e .. :try_end_141} :catchall_1c6

    goto :goto_157

    :catchall_142
    move-exception v0

    goto :goto_15e

    .line 49
    :catch_144
    :try_start_144
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v13, "Failed to load conditional user property from local database"

    .line 41
    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V
    :try_end_153
    .catchall {:try_start_144 .. :try_end_153} :catchall_142

    .line 42
    :try_start_153
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    move-object v0, v4

    :goto_157
    if-eqz v0, :cond_a7

    .line 43
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a7

    .line 42
    :goto_15e
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 50
    throw v0

    :cond_162
    const/4 v12, 0x3

    if-ne v0, v12, :cond_176

    .line 43
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v12, "Skipping app launch break"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    goto/16 :goto_a7

    :cond_176
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v12, "Unknown record type in local database"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    goto/16 :goto_a7

    :cond_187
    new-array v0, v10, [Ljava/lang/String;

    .line 51
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v7

    const-string v12, "messages"

    const-string v13, "rowid <= ?"
    :try_end_193
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_153 .. :try_end_193} :catch_1d3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_153 .. :try_end_193} :catch_1cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_153 .. :try_end_193} :catch_1cb
    .catchall {:try_start_153 .. :try_end_193} :catchall_1c6

    move-object/from16 v14, p1

    .line 52
    :try_start_195
    invoke-virtual {v14, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 53
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v0, v12, :cond_1ae

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v12, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    .line 56
    :cond_1ae
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 57
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1b4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_195 .. :try_end_1b4} :catch_1c3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_195 .. :try_end_1b4} :catch_22a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_195 .. :try_end_1b4} :catch_1c0
    .catchall {:try_start_195 .. :try_end_1b4} :catchall_1bd

    if-eqz v11, :cond_1b9

    .line 62
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_1b9
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v5

    :catchall_1bd
    move-exception v0

    goto/16 :goto_259

    :catch_1c0
    move-exception v0

    goto/16 :goto_206

    :catch_1c3
    move-exception v0

    goto/16 :goto_23e

    :catchall_1c6
    move-exception v0

    move-object/from16 v14, p1

    goto/16 :goto_259

    :catch_1cb
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_206

    :catch_1cf
    move-object/from16 v14, p1

    goto/16 :goto_22a

    :catch_1d3
    move-exception v0

    move-object/from16 v14, p1

    goto/16 :goto_23e

    :catchall_1d8
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_1e3

    :catchall_1dc
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_1e2

    :catchall_1e0
    move-exception v0

    move-object v14, v15

    :goto_1e2
    move-object v11, v4

    :goto_1e3
    if-eqz v11, :cond_1e8

    .line 8
    :try_start_1e5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_1e8
    throw v0
    :try_end_1e9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1e5 .. :try_end_1e9} :catch_1ed
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1e5 .. :try_end_1e9} :catch_1f9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e5 .. :try_end_1e9} :catch_1eb
    .catchall {:try_start_1e5 .. :try_end_1e9} :catchall_1e9

    :catchall_1e9
    move-exception v0

    goto :goto_1f1

    :catch_1eb
    move-exception v0

    goto :goto_1f6

    :catch_1ed
    move-exception v0

    goto :goto_1fd

    :catchall_1ef
    move-exception v0

    move-object v14, v15

    :goto_1f1
    move-object v11, v4

    goto/16 :goto_259

    :catch_1f4
    move-exception v0

    move-object v14, v15

    :goto_1f6
    move-object v11, v4

    goto :goto_206

    :catch_1f8
    move-object v14, v15

    :catch_1f9
    :goto_1f9
    move-object v11, v4

    goto :goto_22a

    :catch_1fb
    move-exception v0

    move-object v14, v15

    :goto_1fd
    move-object v11, v4

    goto :goto_23e

    :catchall_1ff
    move-exception v0

    move-object v11, v4

    move-object v14, v11

    goto :goto_259

    :catch_203
    move-exception v0

    move-object v11, v4

    move-object v14, v11

    :goto_206
    if-eqz v14, :cond_211

    .line 58
    :try_start_208
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v12

    if-eqz v12, :cond_211

    .line 59
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_211
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 60
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v12

    .line 61
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v12

    invoke-virtual {v12, v3, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v10, v1, Lcom/google/android/gms/measurement/internal/zzec;->zzb:Z
    :try_end_220
    .catchall {:try_start_208 .. :try_end_220} :catchall_1bd

    if-eqz v11, :cond_225

    .line 62
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_225
    if-eqz v14, :cond_255

    goto :goto_237

    :catch_228
    move-object v11, v4

    move-object v14, v11

    :catch_22a
    :goto_22a
    int-to-long v12, v9

    .line 64
    :try_start_22b
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_22e
    .catchall {:try_start_22b .. :try_end_22e} :catchall_1bd

    add-int/lit8 v9, v9, 0x14

    if-eqz v11, :cond_235

    .line 62
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_235
    if-eqz v14, :cond_255

    .line 63
    :goto_237
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_255

    :catch_23b
    move-exception v0

    move-object v11, v4

    move-object v14, v11

    .line 68
    :goto_23e
    :try_start_23e
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 65
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v12

    .line 66
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v12

    invoke-virtual {v12, v3, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v10, v1, Lcom/google/android/gms/measurement/internal/zzec;->zzb:Z
    :try_end_24d
    .catchall {:try_start_23e .. :try_end_24d} :catchall_1bd

    if-eqz v11, :cond_252

    .line 62
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_252
    if-eqz v14, :cond_255

    goto :goto_237

    :cond_255
    :goto_255
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1e

    :goto_259
    if-eqz v11, :cond_25e

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_25e
    if-eqz v14, :cond_263

    .line 63
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 69
    :cond_263
    throw v0

    .line 8
    :cond_264
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    return-object v4

    :cond_274
    return-object v5
.end method

.method public final zzm()Z
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzec;->zzq(I[B)Z

    move-result v0

    return v0
.end method

.method public final zzn()Z
    .registers 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "Error deleting app launch break from local database"

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzec;->zzb:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    return v2

    .line 2
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzec;->zzp()Z

    move-result v1

    if-eqz v1, :cond_97

    const/4 v1, 0x5

    move v4, v1

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_88

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3
    :try_start_18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzec;->zzo()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_21

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzec;->zzb:Z

    return v2

    .line 4
    :cond_21
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x3

    .line 5
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "messages"

    const-string v9, "type == ?"

    .line 6
    invoke-virtual {v5, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 8
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_18 .. :try_end_3a} :catch_42
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_18 .. :try_end_3a} :catch_61
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_3a} :catch_40
    .catchall {:try_start_18 .. :try_end_3a} :catchall_3e

    .line 13
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v6

    :catchall_3e
    move-exception v0

    goto :goto_82

    :catch_40
    move-exception v7

    goto :goto_44

    :catch_42
    move-exception v7

    goto :goto_6d

    :goto_44
    if-eqz v5, :cond_4f

    .line 9
    :try_start_46
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 10
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4f
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 11
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v8

    .line 12
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzec;->zzb:Z

    if-eqz v5, :cond_7f

    goto :goto_69

    :catch_61
    int-to-long v6, v4

    .line 14
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_65
    .catchall {:try_start_46 .. :try_end_65} :catchall_3e

    add-int/lit8 v4, v4, 0x14

    if-eqz v5, :cond_7f

    .line 13
    :goto_69
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7f

    .line 19
    :goto_6d
    :try_start_6d
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 15
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v8

    .line 16
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzec;->zzb:Z
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_3e

    if-eqz v5, :cond_7f

    goto :goto_69

    :cond_7f
    :goto_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :goto_82
    if-eqz v5, :cond_87

    .line 13
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 20
    :cond_87
    throw v0

    .line 13
    :cond_88
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v1, "Error deleting app launch break from local database in reasonable time"

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    :cond_97
    return v2
.end method

.method final zzo()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzec;->zzb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzec;->zza:Lcom/google/android/gms/measurement/internal/zzeb;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzec;->zzb:Z

    return-object v1

    :cond_12
    return-object v0
.end method

.method final zzp()Z
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const-string v1, "google_app_measurement_local.db"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
