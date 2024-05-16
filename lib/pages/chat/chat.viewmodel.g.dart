// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatViewModelHash() => r'82757dd8b8b93b0005e3131f57b6529dc0e8629e';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ChatViewModel
    extends BuildlessAutoDisposeNotifier<ChatUiState> {
  late final RoomModel room;

  ChatUiState build(
    RoomModel room,
  );
}

/// See also [ChatViewModel].
@ProviderFor(ChatViewModel)
const chatViewModelProvider = ChatViewModelFamily();

/// See also [ChatViewModel].
class ChatViewModelFamily extends Family<ChatUiState> {
  /// See also [ChatViewModel].
  const ChatViewModelFamily();

  /// See also [ChatViewModel].
  ChatViewModelProvider call(
    RoomModel room,
  ) {
    return ChatViewModelProvider(
      room,
    );
  }

  @override
  ChatViewModelProvider getProviderOverride(
    covariant ChatViewModelProvider provider,
  ) {
    return call(
      provider.room,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'chatViewModelProvider';
}

/// See also [ChatViewModel].
class ChatViewModelProvider
    extends AutoDisposeNotifierProviderImpl<ChatViewModel, ChatUiState> {
  /// See also [ChatViewModel].
  ChatViewModelProvider(
    RoomModel room,
  ) : this._internal(
          () => ChatViewModel()..room = room,
          from: chatViewModelProvider,
          name: r'chatViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatViewModelHash,
          dependencies: ChatViewModelFamily._dependencies,
          allTransitiveDependencies:
              ChatViewModelFamily._allTransitiveDependencies,
          room: room,
        );

  ChatViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.room,
  }) : super.internal();

  final RoomModel room;

  @override
  ChatUiState runNotifierBuild(
    covariant ChatViewModel notifier,
  ) {
    return notifier.build(
      room,
    );
  }

  @override
  Override overrideWith(ChatViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatViewModelProvider._internal(
        () => create()..room = room,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        room: room,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ChatViewModel, ChatUiState>
      createElement() {
    return _ChatViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatViewModelProvider && other.room == room;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, room.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ChatViewModelRef on AutoDisposeNotifierProviderRef<ChatUiState> {
  /// The parameter `room` of this provider.
  RoomModel get room;
}

class _ChatViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<ChatViewModel, ChatUiState>
    with ChatViewModelRef {
  _ChatViewModelProviderElement(super.provider);

  @override
  RoomModel get room => (origin as ChatViewModelProvider).room;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
