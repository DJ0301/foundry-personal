// Automatically generated from `foundry-cheatcodes` Vm definitions. Do not modify manually.
// This interface is just for internal testing purposes. Use `forge-std` instead.

// SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity >=0.6.2 <0.9.0;
pragma experimental ABIEncoderV2;

interface Vm {
    enum CallerMode {
        None,
        Broadcast,
        RecurrentBroadcast,
        Prank,
        RecurrentPrank
    }
    enum AccountAccessKind {
        Call,
        DelegateCall,
        CallCode,
        StaticCall,
        Create,
        SelfDestruct,
        Resume,
        Balance,
        Extcodesize,
        Extcodehash,
        Extcodecopy
    }
    enum ForgeContext {
        TestGroup,
        Test,
        Coverage,
        Snapshot,
        ScriptGroup,
        ScriptDryRun,
        ScriptBroadcast,
        ScriptResume,
        Unknown
    }

    struct Log {
        bytes32[] topics;
        bytes data;
        address emitter;
    }

    struct Rpc {
        string key;
        string url;
    }

    struct EthGetLogs {
        address emitter;
        bytes32[] topics;
        bytes data;
        bytes32 blockHash;
        uint64 blockNumber;
        bytes32 transactionHash;
        uint64 transactionIndex;
        uint256 logIndex;
        bool removed;
    }

    struct DirEntry {
        string errorMessage;
        string path;
        uint64 depth;
        bool isDir;
        bool isSymlink;
    }

    struct FsMetadata {
        bool isDir;
        bool isSymlink;
        uint256 length;
        bool readOnly;
        uint256 modified;
        uint256 accessed;
        uint256 created;
    }

    struct Wallet {
        address addr;
        uint256 publicKeyX;
        uint256 publicKeyY;
        uint256 privateKey;
    }

    struct FfiResult {
        int32 exitCode;
        bytes stdout;
        bytes stderr;
    }

    struct ChainInfo {
        uint256 forkId;
        uint256 chainId;
    }

    struct AccountAccess {
        ChainInfo chainInfo;
        AccountAccessKind kind;
        address account;
        address accessor;
        bool initialized;
        uint256 oldBalance;
        uint256 newBalance;
        bytes deployedCode;
        uint256 value;
        bytes data;
        bool reverted;
        StorageAccess[] storageAccesses;
        uint64 depth;
    }

    struct StorageAccess {
        address account;
        bytes32 slot;
        bool isWrite;
        bytes32 previousValue;
        bytes32 newValue;
        bool reverted;
    }

    struct Gas {
        uint64 gasLimit;
        uint64 gasTotalUsed;
        uint64 gasMemoryUsed;
        int64 gasRefunded;
        uint64 gasRemaining;
    }

    function _expectCheatcodeRevert() external;
    function _expectCheatcodeRevert(bytes4 revertData) external;
    function _expectCheatcodeRevert(bytes calldata revertData) external;
    function accesses(address target) external returns (bytes32[] memory readSlots, bytes32[] memory writeSlots);
    function activeFork() external view returns (uint256 forkId);
    function addr(uint256 privateKey) external pure returns (address keyAddr);
    function allowCheatcodes(address account) external;
    function assertApproxEqAbsDecimal(uint256 left, uint256 right, uint256 maxDelta, uint256 decimals) external pure;
    function assertApproxEqAbsDecimal(
        uint256 left,
        uint256 right,
        uint256 maxDelta,
        uint256 decimals,
        string calldata error
    ) external pure;
    function assertApproxEqAbsDecimal(int256 left, int256 right, uint256 maxDelta, uint256 decimals) external pure;
    function assertApproxEqAbsDecimal(
        int256 left,
        int256 right,
        uint256 maxDelta,
        uint256 decimals,
        string calldata error
    ) external pure;
    function assertApproxEqAbs(uint256 left, uint256 right, uint256 maxDelta) external pure;
    function assertApproxEqAbs(uint256 left, uint256 right, uint256 maxDelta, string calldata error) external pure;
    function assertApproxEqAbs(int256 left, int256 right, uint256 maxDelta) external pure;
    function assertApproxEqAbs(int256 left, int256 right, uint256 maxDelta, string calldata error) external pure;
    function assertApproxEqRelDecimal(uint256 left, uint256 right, uint256 maxPercentDelta, uint256 decimals)
        external
        pure;
    function assertApproxEqRelDecimal(
        uint256 left,
        uint256 right,
        uint256 maxPercentDelta,
        uint256 decimals,
        string calldata error
    ) external pure;
    function assertApproxEqRelDecimal(int256 left, int256 right, uint256 maxPercentDelta, uint256 decimals)
        external
        pure;
    function assertApproxEqRelDecimal(
        int256 left,
        int256 right,
        uint256 maxPercentDelta,
        uint256 decimals,
        string calldata error
    ) external pure;
    function assertApproxEqRel(uint256 left, uint256 right, uint256 maxPercentDelta) external pure;
    function assertApproxEqRel(uint256 left, uint256 right, uint256 maxPercentDelta, string calldata error)
        external
        pure;
    function assertApproxEqRel(int256 left, int256 right, uint256 maxPercentDelta) external pure;
    function assertApproxEqRel(int256 left, int256 right, uint256 maxPercentDelta, string calldata error)
        external
        pure;
    function assertEqDecimal(uint256 left, uint256 right, uint256 decimals) external pure;
    function assertEqDecimal(uint256 left, uint256 right, uint256 decimals, string calldata error) external pure;
    function assertEqDecimal(int256 left, int256 right, uint256 decimals) external pure;
    function assertEqDecimal(int256 left, int256 right, uint256 decimals, string calldata error) external pure;
    function assertEq(bool left, bool right) external pure;
    function assertEq(bool left, bool right, string calldata error) external pure;
    function assertEq(string calldata left, string calldata right) external pure;
    function assertEq(string calldata left, string calldata right, string calldata error) external pure;
    function assertEq(bytes calldata left, bytes calldata right) external pure;
    function assertEq(bytes calldata left, bytes calldata right, string calldata error) external pure;
    function assertEq(bool[] calldata left, bool[] calldata right) external pure;
    function assertEq(bool[] calldata left, bool[] calldata right, string calldata error) external pure;
    function assertEq(uint256[] calldata left, uint256[] calldata right) external pure;
    function assertEq(uint256[] calldata left, uint256[] calldata right, string calldata error) external pure;
    function assertEq(int256[] calldata left, int256[] calldata right) external pure;
    function assertEq(int256[] calldata left, int256[] calldata right, string calldata error) external pure;
    function assertEq(uint256 left, uint256 right) external pure;
    function assertEq(address[] calldata left, address[] calldata right) external pure;
    function assertEq(address[] calldata left, address[] calldata right, string calldata error) external pure;
    function assertEq(bytes32[] calldata left, bytes32[] calldata right) external pure;
    function assertEq(bytes32[] calldata left, bytes32[] calldata right, string calldata error) external pure;
    function assertEq(string[] calldata left, string[] calldata right) external pure;
    function assertEq(string[] calldata left, string[] calldata right, string calldata error) external pure;
    function assertEq(bytes[] calldata left, bytes[] calldata right) external pure;
    function assertEq(bytes[] calldata left, bytes[] calldata right, string calldata error) external pure;
    function assertEq(uint256 left, uint256 right, string calldata error) external pure;
    function assertEq(int256 left, int256 right) external pure;
    function assertEq(int256 left, int256 right, string calldata error) external pure;
    function assertEq(address left, address right) external pure;
    function assertEq(address left, address right, string calldata error) external pure;
    function assertEq(bytes32 left, bytes32 right) external pure;
    function assertEq(bytes32 left, bytes32 right, string calldata error) external pure;
    function assertFalse(bool condition) external pure;
    function assertFalse(bool condition, string calldata error) external pure;
    function assertGeDecimal(uint256 left, uint256 right, uint256 decimals) external pure;
    function assertGeDecimal(uint256 left, uint256 right, uint256 decimals, string calldata error) external pure;
    function assertGeDecimal(int256 left, int256 right, uint256 decimals) external pure;
    function assertGeDecimal(int256 left, int256 right, uint256 decimals, string calldata error) external pure;
    function assertGe(uint256 left, uint256 right) external pure;
    function assertGe(uint256 left, uint256 right, string calldata error) external pure;
    function assertGe(int256 left, int256 right) external pure;
    function assertGe(int256 left, int256 right, string calldata error) external pure;
    function assertGtDecimal(uint256 left, uint256 right, uint256 decimals) external pure;
    function assertGtDecimal(uint256 left, uint256 right, uint256 decimals, string calldata error) external pure;
    function assertGtDecimal(int256 left, int256 right, uint256 decimals) external pure;
    function assertGtDecimal(int256 left, int256 right, uint256 decimals, string calldata error) external pure;
    function assertGt(uint256 left, uint256 right) external pure;
    function assertGt(uint256 left, uint256 right, string calldata error) external pure;
    function assertGt(int256 left, int256 right) external pure;
    function assertGt(int256 left, int256 right, string calldata error) external pure;
    function assertLeDecimal(uint256 left, uint256 right, uint256 decimals) external pure;
    function assertLeDecimal(uint256 left, uint256 right, uint256 decimals, string calldata error) external pure;
    function assertLeDecimal(int256 left, int256 right, uint256 decimals) external pure;
    function assertLeDecimal(int256 left, int256 right, uint256 decimals, string calldata error) external pure;
    function assertLe(uint256 left, uint256 right) external pure;
    function assertLe(uint256 left, uint256 right, string calldata error) external pure;
    function assertLe(int256 left, int256 right) external pure;
    function assertLe(int256 left, int256 right, string calldata error) external pure;
    function assertLtDecimal(uint256 left, uint256 right, uint256 decimals) external pure;
    function assertLtDecimal(uint256 left, uint256 right, uint256 decimals, string calldata error) external pure;
    function assertLtDecimal(int256 left, int256 right, uint256 decimals) external pure;
    function assertLtDecimal(int256 left, int256 right, uint256 decimals, string calldata error) external pure;
    function assertLt(uint256 left, uint256 right) external pure;
    function assertLt(uint256 left, uint256 right, string calldata error) external pure;
    function assertLt(int256 left, int256 right) external pure;
    function assertLt(int256 left, int256 right, string calldata error) external pure;
    function assertNotEqDecimal(uint256 left, uint256 right, uint256 decimals) external pure;
    function assertNotEqDecimal(uint256 left, uint256 right, uint256 decimals, string calldata error) external pure;
    function assertNotEqDecimal(int256 left, int256 right, uint256 decimals) external pure;
    function assertNotEqDecimal(int256 left, int256 right, uint256 decimals, string calldata error) external pure;
    function assertNotEq(bool left, bool right) external pure;
    function assertNotEq(bool left, bool right, string calldata error) external pure;
    function assertNotEq(string calldata left, string calldata right) external pure;
    function assertNotEq(string calldata left, string calldata right, string calldata error) external pure;
    function assertNotEq(bytes calldata left, bytes calldata right) external pure;
    function assertNotEq(bytes calldata left, bytes calldata right, string calldata error) external pure;
    function assertNotEq(bool[] calldata left, bool[] calldata right) external pure;
    function assertNotEq(bool[] calldata left, bool[] calldata right, string calldata error) external pure;
    function assertNotEq(uint256[] calldata left, uint256[] calldata right) external pure;
    function assertNotEq(uint256[] calldata left, uint256[] calldata right, string calldata error) external pure;
    function assertNotEq(int256[] calldata left, int256[] calldata right) external pure;
    function assertNotEq(int256[] calldata left, int256[] calldata right, string calldata error) external pure;
    function assertNotEq(uint256 left, uint256 right) external pure;
    function assertNotEq(address[] calldata left, address[] calldata right) external pure;
    function assertNotEq(address[] calldata left, address[] calldata right, string calldata error) external pure;
    function assertNotEq(bytes32[] calldata left, bytes32[] calldata right) external pure;
    function assertNotEq(bytes32[] calldata left, bytes32[] calldata right, string calldata error) external pure;
    function assertNotEq(string[] calldata left, string[] calldata right) external pure;
    function assertNotEq(string[] calldata left, string[] calldata right, string calldata error) external pure;
    function assertNotEq(bytes[] calldata left, bytes[] calldata right) external pure;
    function assertNotEq(bytes[] calldata left, bytes[] calldata right, string calldata error) external pure;
    function assertNotEq(uint256 left, uint256 right, string calldata error) external pure;
    function assertNotEq(int256 left, int256 right) external pure;
    function assertNotEq(int256 left, int256 right, string calldata error) external pure;
    function assertNotEq(address left, address right) external pure;
    function assertNotEq(address left, address right, string calldata error) external pure;
    function assertNotEq(bytes32 left, bytes32 right) external pure;
    function assertNotEq(bytes32 left, bytes32 right, string calldata error) external pure;
    function assertTrue(bool condition) external pure;
    function assertTrue(bool condition, string calldata error) external pure;
    function assume(bool condition) external pure;
    function blobBaseFee(uint256 newBlobBaseFee) external;
    function blobhashes(bytes32[] calldata hashes) external;
    function breakpoint(string calldata char) external;
    function breakpoint(string calldata char, bool value) external;
    function broadcast() external;
    function broadcast(address signer) external;
    function broadcast(uint256 privateKey) external;
    function chainId(uint256 newChainId) external;
    function clearMockedCalls() external;
    function closeFile(string calldata path) external;
    function coinbase(address newCoinbase) external;
    function computeCreate2Address(bytes32 salt, bytes32 initCodeHash, address deployer)
        external
        pure
        returns (address);
    function computeCreate2Address(bytes32 salt, bytes32 initCodeHash) external pure returns (address);
    function computeCreateAddress(address deployer, uint256 nonce) external pure returns (address);
    function cool(address target) external;
    function copyFile(string calldata from, string calldata to) external returns (uint64 copied);
    function createDir(string calldata path, bool recursive) external;
    function createFork(string calldata urlOrAlias) external returns (uint256 forkId);
    function createFork(string calldata urlOrAlias, uint256 blockNumber) external returns (uint256 forkId);
    function createFork(string calldata urlOrAlias, bytes32 txHash) external returns (uint256 forkId);
    function createSelectFork(string calldata urlOrAlias) external returns (uint256 forkId);
    function createSelectFork(string calldata urlOrAlias, uint256 blockNumber) external returns (uint256 forkId);
    function createSelectFork(string calldata urlOrAlias, bytes32 txHash) external returns (uint256 forkId);
    function createWallet(string calldata walletLabel) external returns (Wallet memory wallet);
    function createWallet(uint256 privateKey) external returns (Wallet memory wallet);
    function createWallet(uint256 privateKey, string calldata walletLabel) external returns (Wallet memory wallet);
    function deal(address account, uint256 newBalance) external;
    function deleteSnapshot(uint256 snapshotId) external returns (bool success);
    function deleteSnapshots() external;
    function deriveKey(string calldata mnemonic, uint32 index) external pure returns (uint256 privateKey);
    function deriveKey(string calldata mnemonic, string calldata derivationPath, uint32 index)
        external
        pure
        returns (uint256 privateKey);
    function deriveKey(string calldata mnemonic, uint32 index, string calldata language)
        external
        pure
        returns (uint256 privateKey);
    function deriveKey(string calldata mnemonic, string calldata derivationPath, uint32 index, string calldata language)
        external
        pure
        returns (uint256 privateKey);
    function difficulty(uint256 newDifficulty) external;
    function dumpState(string calldata pathToStateJson) external;
    function ensNamehash(string calldata name) external pure returns (bytes32);
    function envAddress(string calldata name) external view returns (address value);
    function envAddress(string calldata name, string calldata delim) external view returns (address[] memory value);
    function envBool(string calldata name) external view returns (bool value);
    function envBool(string calldata name, string calldata delim) external view returns (bool[] memory value);
    function envBytes32(string calldata name) external view returns (bytes32 value);
    function envBytes32(string calldata name, string calldata delim) external view returns (bytes32[] memory value);
    function envBytes(string calldata name) external view returns (bytes memory value);
    function envBytes(string calldata name, string calldata delim) external view returns (bytes[] memory value);
    function envExists(string calldata name) external view returns (bool result);
    function envInt(string calldata name) external view returns (int256 value);
    function envInt(string calldata name, string calldata delim) external view returns (int256[] memory value);
    function envOr(string calldata name, bool defaultValue) external view returns (bool value);
    function envOr(string calldata name, uint256 defaultValue) external view returns (uint256 value);
    function envOr(string calldata name, string calldata delim, address[] calldata defaultValue)
        external
        view
        returns (address[] memory value);
    function envOr(string calldata name, string calldata delim, bytes32[] calldata defaultValue)
        external
        view
        returns (bytes32[] memory value);
    function envOr(string calldata name, string calldata delim, string[] calldata defaultValue)
        external
        view
        returns (string[] memory value);
    function envOr(string calldata name, string calldata delim, bytes[] calldata defaultValue)
        external
        view
        returns (bytes[] memory value);
    function envOr(string calldata name, int256 defaultValue) external view returns (int256 value);
    function envOr(string calldata name, address defaultValue) external view returns (address value);
    function envOr(string calldata name, bytes32 defaultValue) external view returns (bytes32 value);
    function envOr(string calldata name, string calldata defaultValue) external view returns (string memory value);
    function envOr(string calldata name, bytes calldata defaultValue) external view returns (bytes memory value);
    function envOr(string calldata name, string calldata delim, bool[] calldata defaultValue)
        external
        view
        returns (bool[] memory value);
    function envOr(string calldata name, string calldata delim, uint256[] calldata defaultValue)
        external
        view
        returns (uint256[] memory value);
    function envOr(string calldata name, string calldata delim, int256[] calldata defaultValue)
        external
        view
        returns (int256[] memory value);
    function envString(string calldata name) external view returns (string memory value);
    function envString(string calldata name, string calldata delim) external view returns (string[] memory value);
    function envUint(string calldata name) external view returns (uint256 value);
    function envUint(string calldata name, string calldata delim) external view returns (uint256[] memory value);
    function etch(address target, bytes calldata newRuntimeBytecode) external;
    function eth_getLogs(uint256 fromBlock, uint256 toBlock, address target, bytes32[] memory topics)
        external
        returns (EthGetLogs[] memory logs);
    function exists(string calldata path) external returns (bool result);
    function expectCallMinGas(address callee, uint256 msgValue, uint64 minGas, bytes calldata data) external;
    function expectCallMinGas(address callee, uint256 msgValue, uint64 minGas, bytes calldata data, uint64 count)
        external;
    function expectCall(address callee, bytes calldata data) external;
    function expectCall(address callee, bytes calldata data, uint64 count) external;
    function expectCall(address callee, uint256 msgValue, bytes calldata data) external;
    function expectCall(address callee, uint256 msgValue, bytes calldata data, uint64 count) external;
    function expectCall(address callee, uint256 msgValue, uint64 gas, bytes calldata data) external;
    function expectCall(address callee, uint256 msgValue, uint64 gas, bytes calldata data, uint64 count) external;
    function expectEmit(bool checkTopic1, bool checkTopic2, bool checkTopic3, bool checkData) external;
    function expectEmit(bool checkTopic1, bool checkTopic2, bool checkTopic3, bool checkData, address emitter)
        external;
    function expectEmit() external;
    function expectEmit(address emitter) external;
    function expectRevert() external;
    function expectRevert(bytes4 revertData) external;
    function expectRevert(bytes calldata revertData) external;
    function expectSafeMemory(uint64 min, uint64 max) external;
    function expectSafeMemoryCall(uint64 min, uint64 max) external;
    function fee(uint256 newBasefee) external;
    function ffi(string[] calldata commandInput) external returns (bytes memory result);
    function fsMetadata(string calldata path) external view returns (FsMetadata memory metadata);
    function getBlobBaseFee() external view returns (uint256 blobBaseFee);
    function getBlobhashes() external view returns (bytes32[] memory hashes);
    function getBlockNumber() external view returns (uint256 height);
    function getBlockTimestamp() external view returns (uint256 timestamp);
    function getCode(string calldata artifactPath) external view returns (bytes memory creationBytecode);
    function getDeployedCode(string calldata artifactPath) external view returns (bytes memory runtimeBytecode);
    function getLabel(address account) external view returns (string memory currentLabel);
    function getMappingKeyAndParentOf(address target, bytes32 elementSlot)
        external
        returns (bool found, bytes32 key, bytes32 parent);
    function getMappingLength(address target, bytes32 mappingSlot) external returns (uint256 length);
    function getMappingSlotAt(address target, bytes32 mappingSlot, uint256 idx) external returns (bytes32 value);
    function getNonce(address account) external view returns (uint64 nonce);
    function getNonce(Wallet calldata wallet) external returns (uint64 nonce);
    function getRecordedLogs() external returns (Log[] memory logs);
    function indexOf(string calldata input, string calldata key) external pure returns (uint256);
    function isContext(ForgeContext context) external view returns (bool result);
    function isDir(string calldata path) external returns (bool result);
    function isFile(string calldata path) external returns (bool result);
    function isPersistent(address account) external view returns (bool persistent);
    function keyExists(string calldata json, string calldata key) external view returns (bool);
    function keyExistsJson(string calldata json, string calldata key) external view returns (bool);
    function keyExistsToml(string calldata toml, string calldata key) external view returns (bool);
    function label(address account, string calldata newLabel) external;
    function lastCallGas() external view returns (Gas memory gas);
    function load(address target, bytes32 slot) external view returns (bytes32 data);
    function loadAllocs(string calldata pathToAllocsJson) external;
    function makePersistent(address account) external;
    function makePersistent(address account0, address account1) external;
    function makePersistent(address account0, address account1, address account2) external;
    function makePersistent(address[] calldata accounts) external;
    function mockCallRevert(address callee, bytes calldata data, bytes calldata revertData) external;
    function mockCallRevert(address callee, uint256 msgValue, bytes calldata data, bytes calldata revertData)
        external;
    function mockCall(address callee, bytes calldata data, bytes calldata returnData) external;
    function mockCall(address callee, uint256 msgValue, bytes calldata data, bytes calldata returnData) external;
    function parseAddress(string calldata stringifiedValue) external pure returns (address parsedValue);
    function parseBool(string calldata stringifiedValue) external pure returns (bool parsedValue);
    function parseBytes(string calldata stringifiedValue) external pure returns (bytes memory parsedValue);
    function parseBytes32(string calldata stringifiedValue) external pure returns (bytes32 parsedValue);
    function parseInt(string calldata stringifiedValue) external pure returns (int256 parsedValue);
    function parseJsonAddress(string calldata json, string calldata key) external pure returns (address);
    function parseJsonAddressArray(string calldata json, string calldata key)
        external
        pure
        returns (address[] memory);
    function parseJsonBool(string calldata json, string calldata key) external pure returns (bool);
    function parseJsonBoolArray(string calldata json, string calldata key) external pure returns (bool[] memory);
    function parseJsonBytes(string calldata json, string calldata key) external pure returns (bytes memory);
    function parseJsonBytes32(string calldata json, string calldata key) external pure returns (bytes32);
    function parseJsonBytes32Array(string calldata json, string calldata key)
        external
        pure
        returns (bytes32[] memory);
    function parseJsonBytesArray(string calldata json, string calldata key) external pure returns (bytes[] memory);
    function parseJsonInt(string calldata json, string calldata key) external pure returns (int256);
    function parseJsonIntArray(string calldata json, string calldata key) external pure returns (int256[] memory);
    function parseJsonKeys(string calldata json, string calldata key) external pure returns (string[] memory keys);
    function parseJsonString(string calldata json, string calldata key) external pure returns (string memory);
    function parseJsonStringArray(string calldata json, string calldata key) external pure returns (string[] memory);
    function parseJsonUint(string calldata json, string calldata key) external pure returns (uint256);
    function parseJsonUintArray(string calldata json, string calldata key) external pure returns (uint256[] memory);
    function parseJson(string calldata json) external pure returns (bytes memory abiEncodedData);
    function parseJson(string calldata json, string calldata key) external pure returns (bytes memory abiEncodedData);
    function parseTomlAddress(string calldata toml, string calldata key) external pure returns (address);
    function parseTomlAddressArray(string calldata toml, string calldata key)
        external
        pure
        returns (address[] memory);
    function parseTomlBool(string calldata toml, string calldata key) external pure returns (bool);
    function parseTomlBoolArray(string calldata toml, string calldata key) external pure returns (bool[] memory);
    function parseTomlBytes(string calldata toml, string calldata key) external pure returns (bytes memory);
    function parseTomlBytes32(string calldata toml, string calldata key) external pure returns (bytes32);
    function parseTomlBytes32Array(string calldata toml, string calldata key)
        external
        pure
        returns (bytes32[] memory);
    function parseTomlBytesArray(string calldata toml, string calldata key) external pure returns (bytes[] memory);
    function parseTomlInt(string calldata toml, string calldata key) external pure returns (int256);
    function parseTomlIntArray(string calldata toml, string calldata key) external pure returns (int256[] memory);
    function parseTomlKeys(string calldata toml, string calldata key) external pure returns (string[] memory keys);
    function parseTomlString(string calldata toml, string calldata key) external pure returns (string memory);
    function parseTomlStringArray(string calldata toml, string calldata key) external pure returns (string[] memory);
    function parseTomlUint(string calldata toml, string calldata key) external pure returns (uint256);
    function parseTomlUintArray(string calldata toml, string calldata key) external pure returns (uint256[] memory);
    function parseToml(string calldata toml) external pure returns (bytes memory abiEncodedData);
    function parseToml(string calldata toml, string calldata key) external pure returns (bytes memory abiEncodedData);
    function parseUint(string calldata stringifiedValue) external pure returns (uint256 parsedValue);
    function pauseGasMetering() external;
    function prank(address msgSender) external;
    function prank(address msgSender, address txOrigin) external;
    function prevrandao(bytes32 newPrevrandao) external;
    function prevrandao(uint256 newPrevrandao) external;
    function projectRoot() external view returns (string memory path);
    function prompt(string calldata promptText) external returns (string memory input);
    function promptAddress(string calldata promptText) external returns (address);
    function promptSecret(string calldata promptText) external returns (string memory input);
    function promptSecretUint(string calldata promptText) external returns (uint256);
    function promptUint(string calldata promptText) external returns (uint256);
    function randomAddress() external returns (address);
    function randomUint() external returns (uint256);
    function randomUint(uint256 min, uint256 max) external returns (uint256);
    function readCallers() external returns (CallerMode callerMode, address msgSender, address txOrigin);
    function readDir(string calldata path) external view returns (DirEntry[] memory entries);
    function readDir(string calldata path, uint64 maxDepth) external view returns (DirEntry[] memory entries);
    function readDir(string calldata path, uint64 maxDepth, bool followLinks)
        external
        view
        returns (DirEntry[] memory entries);
    function readFile(string calldata path) external view returns (string memory data);
    function readFileBinary(string calldata path) external view returns (bytes memory data);
    function readLine(string calldata path) external view returns (string memory line);
    function readLink(string calldata linkPath) external view returns (string memory targetPath);
    function record() external;
    function recordLogs() external;
    function rememberKey(uint256 privateKey) external returns (address keyAddr);
    function removeDir(string calldata path, bool recursive) external;
    function removeFile(string calldata path) external;
    function replace(string calldata input, string calldata from, string calldata to)
        external
        pure
        returns (string memory output);
    function resetNonce(address account) external;
    function resumeGasMetering() external;
    function revertTo(uint256 snapshotId) external returns (bool success);
    function revertToAndDelete(uint256 snapshotId) external returns (bool success);
    function revokePersistent(address account) external;
    function revokePersistent(address[] calldata accounts) external;
    function roll(uint256 newHeight) external;
    function rollFork(uint256 blockNumber) external;
    function rollFork(bytes32 txHash) external;
    function rollFork(uint256 forkId, uint256 blockNumber) external;
    function rollFork(uint256 forkId, bytes32 txHash) external;
    function rpc(string calldata method, string calldata params) external returns (bytes memory data);
    function rpcUrl(string calldata rpcAlias) external view returns (string memory json);
    function rpcUrlStructs() external view returns (Rpc[] memory urls);
    function rpcUrls() external view returns (string[2][] memory urls);
    function selectFork(uint256 forkId) external;
    function serializeAddress(string calldata objectKey, string calldata valueKey, address value)
        external
        returns (string memory json);
    function serializeAddress(string calldata objectKey, string calldata valueKey, address[] calldata values)
        external
        returns (string memory json);
    function serializeBool(string calldata objectKey, string calldata valueKey, bool value)
        external
        returns (string memory json);
    function serializeBool(string calldata objectKey, string calldata valueKey, bool[] calldata values)
        external
        returns (string memory json);
    function serializeBytes32(string calldata objectKey, string calldata valueKey, bytes32 value)
        external
        returns (string memory json);
    function serializeBytes32(string calldata objectKey, string calldata valueKey, bytes32[] calldata values)
        external
        returns (string memory json);
    function serializeBytes(string calldata objectKey, string calldata valueKey, bytes calldata value)
        external
        returns (string memory json);
    function serializeBytes(string calldata objectKey, string calldata valueKey, bytes[] calldata values)
        external
        returns (string memory json);
    function serializeInt(string calldata objectKey, string calldata valueKey, int256 value)
        external
        returns (string memory json);
    function serializeInt(string calldata objectKey, string calldata valueKey, int256[] calldata values)
        external
        returns (string memory json);
    function serializeJson(string calldata objectKey, string calldata value) external returns (string memory json);
    function serializeString(string calldata objectKey, string calldata valueKey, string calldata value)
        external
        returns (string memory json);
    function serializeString(string calldata objectKey, string calldata valueKey, string[] calldata values)
        external
        returns (string memory json);
    function serializeUintToHex(string calldata objectKey, string calldata valueKey, uint256 value)
        external
        returns (string memory json);
    function serializeUint(string calldata objectKey, string calldata valueKey, uint256 value)
        external
        returns (string memory json);
    function serializeUint(string calldata objectKey, string calldata valueKey, uint256[] calldata values)
        external
        returns (string memory json);
    function setEnv(string calldata name, string calldata value) external;
    function setNonce(address account, uint64 newNonce) external;
    function setNonceUnsafe(address account, uint64 newNonce) external;
    function signP256(uint256 privateKey, bytes32 digest) external pure returns (bytes32 r, bytes32 s);
    function sign(uint256 privateKey, bytes32 digest) external pure returns (uint8 v, bytes32 r, bytes32 s);
    function sign(bytes32 digest) external pure returns (uint8 v, bytes32 r, bytes32 s);
    function sign(address signer, bytes32 digest) external pure returns (uint8 v, bytes32 r, bytes32 s);
    function sign(Wallet calldata wallet, bytes32 digest) external returns (uint8 v, bytes32 r, bytes32 s);
    function skip(bool skipTest) external;
    function sleep(uint256 duration) external;
    function snapshot() external returns (uint256 snapshotId);
    function split(string calldata input, string calldata delimiter) external pure returns (string[] memory outputs);
    function startBroadcast() external;
    function startBroadcast(address signer) external;
    function startBroadcast(uint256 privateKey) external;
    function startMappingRecording() external;
    function startPrank(address msgSender) external;
    function startPrank(address msgSender, address txOrigin) external;
    function startStateDiffRecording() external;
    function stopAndReturnStateDiff() external returns (AccountAccess[] memory accountAccesses);
    function stopBroadcast() external;
    function stopExpectSafeMemory() external;
    function stopMappingRecording() external;
    function stopPrank() external;
    function store(address target, bytes32 slot, bytes32 value) external;
    function toBase64URL(bytes calldata data) external pure returns (string memory);
    function toBase64URL(string calldata data) external pure returns (string memory);
    function toBase64(bytes calldata data) external pure returns (string memory);
    function toBase64(string calldata data) external pure returns (string memory);
    function toLowercase(string calldata input) external pure returns (string memory output);
    function toString(address value) external pure returns (string memory stringifiedValue);
    function toString(bytes calldata value) external pure returns (string memory stringifiedValue);
    function toString(bytes32 value) external pure returns (string memory stringifiedValue);
    function toString(bool value) external pure returns (string memory stringifiedValue);
    function toString(uint256 value) external pure returns (string memory stringifiedValue);
    function toString(int256 value) external pure returns (string memory stringifiedValue);
    function toUppercase(string calldata input) external pure returns (string memory output);
    function transact(bytes32 txHash) external;
    function transact(uint256 forkId, bytes32 txHash) external;
    function trim(string calldata input) external pure returns (string memory output);
    function tryFfi(string[] calldata commandInput) external returns (FfiResult memory result);
    function txGasPrice(uint256 newGasPrice) external;
    function unixTime() external returns (uint256 milliseconds);
    function warp(uint256 newTimestamp) external;
    function writeFile(string calldata path, string calldata data) external;
    function writeFileBinary(string calldata path, bytes calldata data) external;
    function writeJson(string calldata json, string calldata path) external;
    function writeJson(string calldata json, string calldata path, string calldata valueKey) external;
    function writeLine(string calldata path, string calldata data) external;
    function writeToml(string calldata json, string calldata path) external;
    function writeToml(string calldata json, string calldata path, string calldata valueKey) external;
    function zkRegisterContract(
        string calldata name,
        bytes32 evmBytecodeHash,
        bytes calldata evmDeployedBytecode,
        bytes calldata evmBytecode,
        bytes32 zkBytecodeHash,
        bytes calldata zkDeployedBytecode
    ) external pure;
    function zkVm(bool enable) external pure;
}