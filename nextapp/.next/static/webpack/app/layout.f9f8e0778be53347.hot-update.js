/*
 * ATTENTION: An "eval-source-map" devtool has been used.
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file with attached SourceMaps in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
self["webpackHotUpdate_N_E"]("app/layout",{

/***/ "(app-pages-browser)/./app/Navigation.js":
/*!***************************!*\
  !*** ./app/Navigation.js ***!
  \***************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval(__webpack_require__.ts("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! react/jsx-dev-runtime */ \"(app-pages-browser)/./node_modules/next/dist/compiled/react/jsx-dev-runtime.js\");\n/* harmony import */ var next_link__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! next/link */ \"(app-pages-browser)/./node_modules/next/link.js\");\n/* harmony import */ var next_link__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(next_link__WEBPACK_IMPORTED_MODULE_1__);\n/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! react */ \"(app-pages-browser)/./node_modules/next/dist/compiled/react/index.js\");\n/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(react__WEBPACK_IMPORTED_MODULE_2__);\n/* harmony import */ var _header_module_css__WEBPACK_IMPORTED_MODULE_8__ = __webpack_require__(/*! ./header.module.css */ \"(app-pages-browser)/./app/header.module.css\");\n/* harmony import */ var _header_module_css__WEBPACK_IMPORTED_MODULE_8___default = /*#__PURE__*/__webpack_require__.n(_header_module_css__WEBPACK_IMPORTED_MODULE_8__);\n/* harmony import */ var react_redux__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! react-redux */ \"(app-pages-browser)/./node_modules/react-redux/dist/react-redux.mjs\");\n/* harmony import */ var _redux_reducer_login__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./redux/reducer/login */ \"(app-pages-browser)/./app/redux/reducer/login.js\");\n/* harmony import */ var react_toastify__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! react-toastify */ \"(app-pages-browser)/./node_modules/react-toastify/dist/react-toastify.esm.mjs\");\n/* harmony import */ var react_toastify_dist_ReactToastify_css__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! react-toastify/dist/ReactToastify.css */ \"(app-pages-browser)/./node_modules/react-toastify/dist/ReactToastify.css\");\n/* harmony import */ var next_navigation__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! next/navigation */ \"(app-pages-browser)/./node_modules/next/navigation.js\");\n/* harmony import */ var next_navigation__WEBPACK_IMPORTED_MODULE_6___default = /*#__PURE__*/__webpack_require__.n(next_navigation__WEBPACK_IMPORTED_MODULE_6__);\n/* __next_internal_client_entry_do_not_use__ default auto */ \nvar _s = $RefreshSig$();\n\n\n\n\n\n\n\n\n\nfunction Navigation(props) {\n    _s();\n    const isUserLoggedIn = (0,react_redux__WEBPACK_IMPORTED_MODULE_7__.useSelector)((state)=>state.login.isUserLoggedIn);\n    const dispatch = (0,react_redux__WEBPACK_IMPORTED_MODULE_7__.useDispatch)();\n    const router = (0,next_navigation__WEBPACK_IMPORTED_MODULE_6__.useRouter)();\n    const handleCLick = ()=>{\n        console.log(\"logout\");\n        dispatch((0,_redux_reducer_login__WEBPACK_IMPORTED_MODULE_3__.logout)());\n        localStorage.removeItem(\"token\");\n        react_toastify__WEBPACK_IMPORTED_MODULE_4__.toast.success(\"You are logged out Successful\", {\n            position: \"top-right\",\n            autoClose: 4000,\n            hideProgressBar: false,\n            closeOnClick: true,\n            pauseOnHover: true,\n            draggable: true,\n            progress: undefined,\n            theme: \"light\"\n        });\n        setTimeout(()=>{\n            router.push(\"/\");\n        }, 5000);\n    };\n    return /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.Fragment, {\n        children: [\n            /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"header\", {\n                className: (_header_module_css__WEBPACK_IMPORTED_MODULE_8___default().header),\n                children: [\n                    /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)((next_link__WEBPACK_IMPORTED_MODULE_1___default()), {\n                        className: (_header_module_css__WEBPACK_IMPORTED_MODULE_8___default().logo),\n                        href: \"/\",\n                        children: \"NextApp\"\n                    }, void 0, false, {\n                        fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\Navigation.js\",\n                        lineNumber: 38,\n                        columnNumber: 9\n                    }, this),\n                    /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"nav\", {\n                        className: (_header_module_css__WEBPACK_IMPORTED_MODULE_8___default().nav),\n                        children: /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"ul\", {\n                            children: [\n                                /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"li\", {\n                                    children: /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)((next_link__WEBPACK_IMPORTED_MODULE_1___default()), {\n                                        href: \"/register\",\n                                        children: \"Register\"\n                                    }, void 0, false, {\n                                        fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\Navigation.js\",\n                                        lineNumber: 44,\n                                        columnNumber: 15\n                                    }, this)\n                                }, void 0, false, {\n                                    fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\Navigation.js\",\n                                    lineNumber: 43,\n                                    columnNumber: 13\n                                }, this),\n                                /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"li\", {\n                                    children: isUserLoggedIn ? /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"button\", {\n                                        onClick: handleCLick,\n                                        className: (_header_module_css__WEBPACK_IMPORTED_MODULE_8___default().btn),\n                                        children: \"Logout\"\n                                    }, void 0, false, {\n                                        fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\Navigation.js\",\n                                        lineNumber: 48,\n                                        columnNumber: 17\n                                    }, this) : /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)((next_link__WEBPACK_IMPORTED_MODULE_1___default()), {\n                                        href: \"/login\",\n                                        children: \"Login\"\n                                    }, void 0, false, {\n                                        fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\Navigation.js\",\n                                        lineNumber: 52,\n                                        columnNumber: 17\n                                    }, this)\n                                }, void 0, false, {\n                                    fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\Navigation.js\",\n                                    lineNumber: 46,\n                                    columnNumber: 13\n                                }, this)\n                            ]\n                        }, void 0, true, {\n                            fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\Navigation.js\",\n                            lineNumber: 42,\n                            columnNumber: 11\n                        }, this)\n                    }, void 0, false, {\n                        fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\Navigation.js\",\n                        lineNumber: 41,\n                        columnNumber: 9\n                    }, this)\n                ]\n            }, void 0, true, {\n                fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\Navigation.js\",\n                lineNumber: 37,\n                columnNumber: 7\n            }, this),\n            /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_toastify__WEBPACK_IMPORTED_MODULE_4__.ToastContainer, {}, void 0, false, {\n                fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\Navigation.js\",\n                lineNumber: 58,\n                columnNumber: 7\n            }, this)\n        ]\n    }, void 0, true);\n}\n_s(Navigation, \"55H2aisjRisqtAVvxYnGwrS0xYU=\", false, function() {\n    return [\n        react_redux__WEBPACK_IMPORTED_MODULE_7__.useSelector,\n        react_redux__WEBPACK_IMPORTED_MODULE_7__.useDispatch,\n        next_navigation__WEBPACK_IMPORTED_MODULE_6__.useRouter\n    ];\n});\n_c = Navigation;\n/* harmony default export */ __webpack_exports__[\"default\"] = (Navigation);\nvar _c;\n$RefreshReg$(_c, \"Navigation\");\n\n\n;\n    // Wrapped in an IIFE to avoid polluting the global scope\n    ;\n    (function () {\n        var _a, _b;\n        // Legacy CSS implementations will `eval` browser code in a Node.js context\n        // to extract CSS. For backwards compatibility, we need to check we're in a\n        // browser context before continuing.\n        if (typeof self !== 'undefined' &&\n            // AMP / No-JS mode does not inject these helpers:\n            '$RefreshHelpers$' in self) {\n            // @ts-ignore __webpack_module__ is global\n            var currentExports = module.exports;\n            // @ts-ignore __webpack_module__ is global\n            var prevSignature = (_b = (_a = module.hot.data) === null || _a === void 0 ? void 0 : _a.prevSignature) !== null && _b !== void 0 ? _b : null;\n            // This cannot happen in MainTemplate because the exports mismatch between\n            // templating and execution.\n            self.$RefreshHelpers$.registerExportsForReactRefresh(currentExports, module.id);\n            // A module can be accepted automatically based on its exports, e.g. when\n            // it is a Refresh Boundary.\n            if (self.$RefreshHelpers$.isReactRefreshBoundary(currentExports)) {\n                // Save the previous exports signature on update so we can compare the boundary\n                // signatures. We avoid saving exports themselves since it causes memory leaks (https://github.com/vercel/next.js/pull/53797)\n                module.hot.dispose(function (data) {\n                    data.prevSignature =\n                        self.$RefreshHelpers$.getRefreshBoundarySignature(currentExports);\n                });\n                // Unconditionally accept an update to this module, we'll check if it's\n                // still a Refresh Boundary later.\n                // @ts-ignore importMeta is replaced in the loader\n                module.hot.accept();\n                // This field is set when the previous version of this module was a\n                // Refresh Boundary, letting us know we need to check for invalidation or\n                // enqueue an update.\n                if (prevSignature !== null) {\n                    // A boundary can become ineligible if its exports are incompatible\n                    // with the previous exports.\n                    //\n                    // For example, if you add/remove/change exports, we'll want to\n                    // re-execute the importing modules, and force those components to\n                    // re-render. Similarly, if you convert a class component to a\n                    // function, we want to invalidate the boundary.\n                    if (self.$RefreshHelpers$.shouldInvalidateReactRefreshBoundary(prevSignature, self.$RefreshHelpers$.getRefreshBoundarySignature(currentExports))) {\n                        module.hot.invalidate();\n                    }\n                    else {\n                        self.$RefreshHelpers$.scheduleUpdate();\n                    }\n                }\n            }\n            else {\n                // Since we just executed the code for the module, it's possible that the\n                // new exports made it ineligible for being a boundary.\n                // We only care about the case when we were _previously_ a boundary,\n                // because we already accepted this update (accidental side effect).\n                var isNoLongerABoundary = prevSignature !== null;\n                if (isNoLongerABoundary) {\n                    module.hot.invalidate();\n                }\n            }\n        }\n    })();\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiKGFwcC1wYWdlcy1icm93c2VyKS8uL2FwcC9OYXZpZ2F0aW9uLmpzIiwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7QUFDNkI7QUFDSDtBQUNnQjtBQUNBO0FBQ0E7QUFDSztBQUNRO0FBQ1I7QUFDSDtBQUU1QyxTQUFTUyxXQUFXQyxLQUFLOztJQUN2QixNQUFNQyxpQkFBaUJSLHdEQUFXQSxDQUFDLENBQUNTLFFBQVVBLE1BQU1DLEtBQUssQ0FBQ0YsY0FBYztJQUN4RSxNQUFNRyxXQUFXVix3REFBV0E7SUFDNUIsTUFBTVcsU0FBU1AsMERBQVNBO0lBQ3hCLE1BQU1RLGNBQWM7UUFDbEJDLFFBQVFDLEdBQUcsQ0FBQztRQUNaSixTQUFTVCw0REFBTUE7UUFDZmMsYUFBYUMsVUFBVSxDQUFDO1FBQ3hCYixpREFBS0EsQ0FBQ2MsT0FBTyxDQUFDLGlDQUFpQztZQUM3Q0MsVUFBVTtZQUNWQyxXQUFXO1lBQ1hDLGlCQUFpQjtZQUNqQkMsY0FBYztZQUNkQyxjQUFjO1lBQ2RDLFdBQVc7WUFDWEMsVUFBVUM7WUFDVkMsT0FBTztRQUNUO1FBQ0FDLFdBQVc7WUFDVGhCLE9BQU9pQixJQUFJLENBQUM7UUFDZCxHQUFHO0lBQ0w7SUFFQSxxQkFDRTs7MEJBQ0UsOERBQUNDO2dCQUFPQyxXQUFXaEMsa0VBQWM7O2tDQUMvQiw4REFBQ0Ysa0RBQUlBO3dCQUFDa0MsV0FBV2hDLGdFQUFZO3dCQUFFa0MsTUFBSztrQ0FBSTs7Ozs7O2tDQUd4Qyw4REFBQ0M7d0JBQUlILFdBQVdoQywrREFBVztrQ0FDekIsNEVBQUNvQzs7OENBQ0MsOERBQUNDOzhDQUNDLDRFQUFDdkMsa0RBQUlBO3dDQUFDb0MsTUFBSztrREFBWTs7Ozs7Ozs7Ozs7OENBRXpCLDhEQUFDRzs4Q0FDRTVCLCtCQUNDLDhEQUFDNkI7d0NBQU9DLFNBQVN6Qjt3Q0FBYWtCLFdBQVdoQywrREFBVztrREFBRTs7Ozs7NkRBSXRELDhEQUFDRixrREFBSUE7d0NBQUNvQyxNQUFLO2tEQUFTOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzBCQU05Qiw4REFBQzlCLDBEQUFjQTs7Ozs7OztBQUdyQjtHQWpEU0c7O1FBQ2dCTixvREFBV0E7UUFDakJDLG9EQUFXQTtRQUNiSSxzREFBU0E7OztLQUhqQkM7QUFtRFQsK0RBQWVBLFVBQVVBLEVBQUMiLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9fTl9FLy4vYXBwL05hdmlnYXRpb24uanM/Y2FkNiJdLCJzb3VyY2VzQ29udGVudCI6WyJcInVzZSBjbGllbnRcIjtcbmltcG9ydCBMaW5rIGZyb20gXCJuZXh0L2xpbmtcIjtcbmltcG9ydCBSZWFjdCBmcm9tIFwicmVhY3RcIjtcbmltcG9ydCBjbGFzc2VzIGZyb20gXCIuL2hlYWRlci5tb2R1bGUuY3NzXCI7XG5pbXBvcnQgeyB1c2VTZWxlY3RvciB9IGZyb20gXCJyZWFjdC1yZWR1eFwiO1xuaW1wb3J0IHsgdXNlRGlzcGF0Y2ggfSBmcm9tIFwicmVhY3QtcmVkdXhcIjtcbmltcG9ydCB7IGxvZ291dCB9IGZyb20gXCIuL3JlZHV4L3JlZHVjZXIvbG9naW5cIjtcbmltcG9ydCB7IFRvYXN0Q29udGFpbmVyLCB0b2FzdCB9IGZyb20gXCJyZWFjdC10b2FzdGlmeVwiO1xuaW1wb3J0IFwicmVhY3QtdG9hc3RpZnkvZGlzdC9SZWFjdFRvYXN0aWZ5LmNzc1wiO1xuaW1wb3J0IHsgdXNlUm91dGVyIH0gZnJvbSBcIm5leHQvbmF2aWdhdGlvblwiO1xuXG5mdW5jdGlvbiBOYXZpZ2F0aW9uKHByb3BzKSB7XG4gIGNvbnN0IGlzVXNlckxvZ2dlZEluID0gdXNlU2VsZWN0b3IoKHN0YXRlKSA9PiBzdGF0ZS5sb2dpbi5pc1VzZXJMb2dnZWRJbik7XG4gIGNvbnN0IGRpc3BhdGNoID0gdXNlRGlzcGF0Y2goKTtcbiAgY29uc3Qgcm91dGVyID0gdXNlUm91dGVyKCk7XG4gIGNvbnN0IGhhbmRsZUNMaWNrID0gKCkgPT4ge1xuICAgIGNvbnNvbGUubG9nKFwibG9nb3V0XCIpO1xuICAgIGRpc3BhdGNoKGxvZ291dCgpKTtcbiAgICBsb2NhbFN0b3JhZ2UucmVtb3ZlSXRlbShcInRva2VuXCIpO1xuICAgIHRvYXN0LnN1Y2Nlc3MoXCJZb3UgYXJlIGxvZ2dlZCBvdXQgU3VjY2Vzc2Z1bFwiLCB7XG4gICAgICBwb3NpdGlvbjogXCJ0b3AtcmlnaHRcIixcbiAgICAgIGF1dG9DbG9zZTogNDAwMCxcbiAgICAgIGhpZGVQcm9ncmVzc0JhcjogZmFsc2UsXG4gICAgICBjbG9zZU9uQ2xpY2s6IHRydWUsXG4gICAgICBwYXVzZU9uSG92ZXI6IHRydWUsXG4gICAgICBkcmFnZ2FibGU6IHRydWUsXG4gICAgICBwcm9ncmVzczogdW5kZWZpbmVkLFxuICAgICAgdGhlbWU6IFwibGlnaHRcIixcbiAgICB9KTtcbiAgICBzZXRUaW1lb3V0KCgpID0+IHtcbiAgICAgIHJvdXRlci5wdXNoKFwiL1wiKTtcbiAgICB9LCA1MDAwKTtcbiAgfTtcblxuICByZXR1cm4gKFxuICAgIDw+XG4gICAgICA8aGVhZGVyIGNsYXNzTmFtZT17Y2xhc3Nlcy5oZWFkZXJ9PlxuICAgICAgICA8TGluayBjbGFzc05hbWU9e2NsYXNzZXMubG9nb30gaHJlZj1cIi9cIj5cbiAgICAgICAgICBOZXh0QXBwXG4gICAgICAgIDwvTGluaz5cbiAgICAgICAgPG5hdiBjbGFzc05hbWU9e2NsYXNzZXMubmF2fT5cbiAgICAgICAgICA8dWw+XG4gICAgICAgICAgICA8bGk+XG4gICAgICAgICAgICAgIDxMaW5rIGhyZWY9XCIvcmVnaXN0ZXJcIj5SZWdpc3RlcjwvTGluaz5cbiAgICAgICAgICAgIDwvbGk+XG4gICAgICAgICAgICA8bGk+XG4gICAgICAgICAgICAgIHtpc1VzZXJMb2dnZWRJbiA/IChcbiAgICAgICAgICAgICAgICA8YnV0dG9uIG9uQ2xpY2s9e2hhbmRsZUNMaWNrfSBjbGFzc05hbWU9e2NsYXNzZXMuYnRufT5cbiAgICAgICAgICAgICAgICAgIExvZ291dFxuICAgICAgICAgICAgICAgIDwvYnV0dG9uPlxuICAgICAgICAgICAgICApIDogKFxuICAgICAgICAgICAgICAgIDxMaW5rIGhyZWY9XCIvbG9naW5cIj5Mb2dpbjwvTGluaz5cbiAgICAgICAgICAgICAgKX1cbiAgICAgICAgICAgIDwvbGk+XG4gICAgICAgICAgPC91bD5cbiAgICAgICAgPC9uYXY+XG4gICAgICA8L2hlYWRlcj5cbiAgICAgIDxUb2FzdENvbnRhaW5lciAvPlxuICAgIDwvPlxuICApO1xufVxuXG5leHBvcnQgZGVmYXVsdCBOYXZpZ2F0aW9uO1xuIl0sIm5hbWVzIjpbIkxpbmsiLCJSZWFjdCIsImNsYXNzZXMiLCJ1c2VTZWxlY3RvciIsInVzZURpc3BhdGNoIiwibG9nb3V0IiwiVG9hc3RDb250YWluZXIiLCJ0b2FzdCIsInVzZVJvdXRlciIsIk5hdmlnYXRpb24iLCJwcm9wcyIsImlzVXNlckxvZ2dlZEluIiwic3RhdGUiLCJsb2dpbiIsImRpc3BhdGNoIiwicm91dGVyIiwiaGFuZGxlQ0xpY2siLCJjb25zb2xlIiwibG9nIiwibG9jYWxTdG9yYWdlIiwicmVtb3ZlSXRlbSIsInN1Y2Nlc3MiLCJwb3NpdGlvbiIsImF1dG9DbG9zZSIsImhpZGVQcm9ncmVzc0JhciIsImNsb3NlT25DbGljayIsInBhdXNlT25Ib3ZlciIsImRyYWdnYWJsZSIsInByb2dyZXNzIiwidW5kZWZpbmVkIiwidGhlbWUiLCJzZXRUaW1lb3V0IiwicHVzaCIsImhlYWRlciIsImNsYXNzTmFtZSIsImxvZ28iLCJocmVmIiwibmF2IiwidWwiLCJsaSIsImJ1dHRvbiIsIm9uQ2xpY2siLCJidG4iXSwic291cmNlUm9vdCI6IiJ9\n//# sourceURL=webpack-internal:///(app-pages-browser)/./app/Navigation.js\n"));

/***/ }),

/***/ "(app-pages-browser)/./node_modules/next/navigation.js":
/*!*****************************************!*\
  !*** ./node_modules/next/navigation.js ***!
  \*****************************************/
/***/ (function(module, __unused_webpack_exports, __webpack_require__) {

eval(__webpack_require__.ts("module.exports = __webpack_require__(/*! ./dist/client/components/navigation */ \"(app-pages-browser)/./node_modules/next/dist/client/components/navigation.js\")\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiKGFwcC1wYWdlcy1icm93c2VyKS8uL25vZGVfbW9kdWxlcy9uZXh0L25hdmlnYXRpb24uanMiLCJtYXBwaW5ncyI6IkFBQUEsK0pBQStEIiwic291cmNlcyI6WyJ3ZWJwYWNrOi8vX05fRS8uL25vZGVfbW9kdWxlcy9uZXh0L25hdmlnYXRpb24uanM/YWExNiJdLCJzb3VyY2VzQ29udGVudCI6WyJtb2R1bGUuZXhwb3J0cyA9IHJlcXVpcmUoJy4vZGlzdC9jbGllbnQvY29tcG9uZW50cy9uYXZpZ2F0aW9uJylcbiJdLCJuYW1lcyI6W10sInNvdXJjZVJvb3QiOiIifQ==\n//# sourceURL=webpack-internal:///(app-pages-browser)/./node_modules/next/navigation.js\n"));

/***/ })

});