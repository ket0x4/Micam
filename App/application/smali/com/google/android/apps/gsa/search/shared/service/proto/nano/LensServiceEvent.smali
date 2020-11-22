.class public abstract Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEvent;
.super Ljava/lang/Object;
.source "LensServiceEvent.java"


# static fields
.field public static final lensServiceEventData:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension<",
            "Lcom/google/android/apps/gsa/search/shared/service/proto/nano/ServiceEventProto;",
            "Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    const-class v0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEventData;

    const/16 v1, 0xb

    const-wide/32 v2, 0x48cc1842

    .line 16
    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createMessageTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceEvent;->lensServiceEventData:Lcom/google/protobuf/nano/Extension;

    return-void
.end method
